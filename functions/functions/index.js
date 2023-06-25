const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp();

exports.updateUserPoints = functions.firestore
    .document('dangers/{dangerId}')
    .onWrite((change, context) => {
        const dangerData = change.after.exists ? change.after.data() : null;
        const previousDangerData = change.before.exists ? change.before.data() : null;

        // Check if the 'status' field was modified to 'solved' or 'submitted'
        if (
            dangerData &&
            (dangerData.status === 'solved' || dangerData.status === 'submitted') &&
            (!previousDangerData || dangerData.status !== previousDangerData.status)
        ) {
            const uid = dangerData.uid;
            const pointsIncrement = dangerData.status === 'solved' ? 20 : 5;

            // Update the user document with the matching 'uid' field in the 'users' collection
            const usersCollectionRef = admin.firestore().collection('users');
            const userQuery = usersCollectionRef.where('uid', '==', uid);

            return userQuery.get().then((userQuerySnapshot) => {
                if (!userQuerySnapshot.empty) {
                    const userDoc = userQuerySnapshot.docs[0];
                    const userRef = userDoc.ref;
                    const userData = userDoc.data();
                    const newPoints = (userData.points || 0) + pointsIncrement;

                    // Increment the 'points' field of the user document
                    return userRef.update({ points: newPoints });
                } else {
                    console.log(`User with uid ${uid} does not exist.`);
                    return null;
                }
            }).catch((error) => {
                console.error('Error retrieving/updating user document:', error);
                return null;
            });
        }

        return null;
    });

exports.incrementSubmittedCount = functions.firestore
    .document('dangers/{dangerId}')
    .onCreate((snapshot, context) => {
        const dangerData = snapshot.data();
        const user = dangerData.uid;

        // Update the user document with the matching 'uid' field in the 'users' collection
        const usersCollectionRef = admin.firestore().collection('users');
        const userQuery = usersCollectionRef.where('uid', '==', user);

        return userQuery.get().then((userQuerySnapshot) => {
            if (!userQuerySnapshot.empty) {
                const userDoc = userQuerySnapshot.docs[0];
                const userRef = userDoc.ref;
                const userData = userDoc.data();
                const newSubmittedCount = (userData.submitted || 0) + 1;

                // Increment the 'submitted' field of the user document by 1
                return userRef.update({ submitted: newSubmittedCount });
            } else {
                console.log(`User with 'user' field ${user} does not exist.`);
                return null;
            }
        }).catch((error) => {
            console.error('Error retrieving/updating user document:', error);
            return null;
        });
    });

exports.incrementSolvedCount = functions.firestore
    .document('dangers/{dangerId}')
    .onUpdate((change, context) => {
        const dangerData = change.after.data();
        const previousDangerData = change.before.data();

        // Check if the 'status' field was modified to 'solved'
        if (dangerData.status === 'solved' && previousDangerData.status !== 'solved') {
            const user = dangerData.uid;

            // Update the user document with the matching 'uid' field in the 'users' collection
            const usersCollectionRef = admin.firestore().collection('users');
            const userQuery = usersCollectionRef.where('uid', '==', user);

            return userQuery.get().then((userQuerySnapshot) => {
                if (!userQuerySnapshot.empty) {
                    const userDoc = userQuerySnapshot.docs[0];
                    const userRef = userDoc.ref;
                    const userData = userDoc.data();
                    const newSolvedCount = (userData.solved || 0) + 1;

                    // Increment the 'solved' field of the user document by 1
                    return userRef.update({ solved: newSolvedCount });
                } else {
                    console.log(`User with 'user' field ${user} does not exist.`);
                    return null;
                }
            }).catch((error) => {
                console.error('Error retrieving/updating user document:', error);
                return null;
            });
        }

        return null;
    });


exports.updateUserPointsOnDelete = functions.firestore
    .document('dangers/{dangerId}')
    .onDelete((snapshot, context) => {
        const dangerData = snapshot.data();
        const status = dangerData.status;
        const uid = dangerData.uid;
        const pointsDecrement = status === 'submitted' ? 5 : (status === 'solved' ? 25 : 0);
        const solvedDecrement = status === 'submitted' ? 0 : (status === 'solved' ? 1 : 0);

        // Update the user document with the matching 'uid' field in the 'users' collection
        const usersCollectionRef = admin.firestore().collection('users');
        const userQuery = usersCollectionRef.where('uid', '==', uid);

        return userQuery.get().then((userQuerySnapshot) => {
            if (!userQuerySnapshot.empty) {
                const userDoc = userQuerySnapshot.docs[0];
                const userRef = userDoc.ref;
                const userData = userDoc.data();
                const newPoints = (userData.points || 0) - pointsDecrement;
                const newSolved = (userData.solved || 0) - solvedDecrement;
                const newSubmitted = (userData.submitted || 0) - 1;


                // Decrement the 'points' field of the user document
                return userRef.update({ points: newPoints, solved: newSolved, submitted: newSubmitted });
            } else {
                console.log(`User with 'uid' field ${uid} does not exist.`);
                return null;
            }
        }).catch((error) => {
            console.error('Error retrieving/updating user document:', error);
            return null;
        });
    });


exports.sendNotificationOnQueueUpdate = functions.firestore
    .document('queue/{uid}')
    .onUpdate(async (change, context) => {
        const newValue = change.after.data();
        const status = newValue.status;
        const uid = newValue.uid;

        if (status === 'active') {
            const deviceToken = await getDeviceToken(uid);
            return sendNotification(deviceToken);
        }

        return null;
    });

async function getDeviceToken(uid) {
    const tokensCollection = admin.firestore().collection('tokens');
    const tokenDoc = await tokensCollection.doc(uid).get();
    return tokenDoc.data().deviceToken;
}

function sendNotification(deviceToken) {
    const message = {
        notification: {
            title: 'Request accepted',
            body: 'An admin is ready to speak with you now!',
        },
        token: deviceToken,
    };

    return admin.messaging().send(message);
}


