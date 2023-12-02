<script src="https://www.gstatic.com/firebasejs/9.1.3/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/9.1.3/firebase-firestore.js"></script>

<script>
    // Initialize Firebase
    const firebaseConfig = {
    apiKey: "AIzaSyCdie8OMJZPmCXf_qjWv1Q-KxkR-MTuij8",
    authDomain: "classmate-174aa.firebaseapp.com",
    projectId: "classmate-174aa",
    storageBucket: "classmate-174aa.appspot.com",
    messagingSenderId: "851045010561",
    appId: "1:851045010561:android:099682dd51b3e748439180"
};

    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);

    // Assuming you have Firebase initialized in your project
    const db = firebase.firestore();

    function addRandomUsersAndClasses() {
    function getRandomRole() {
        const roles = ["professor", "student"];
        return roles[Math.floor(Math.random() * roles.length)];
    }

    // Add 100 user entries to the "users" collection
    for (let i = 1; i <= 100; i++) {
    const user = {
    name: `User${i}`,
    id: i,
    email: `user${i}@example.com`,
    role: getRandomRole()
};

    db.collection("users").add(user)
    .then(async (docRef) => {
    console.log(`User Document ${i} written with ID: `, docRef.id);

    // Check if the user is a professor
    if (user.role === "professor") {
    const classData = {
    students: await getRandomDocument("users"),
    professor: user,
    title: `Class ${i}`,
    section: `Section ${i}`,
    room: `Room ${i}`,
    assignments: getRandomAssignments(5) // Adjust the number of assignments as needed
};

    // Add the class entry to the "class" collection
    db.collection("class").add(classData)
    .then((classDocRef) => {
    console.log(`Class Document ${i} written with ID: `, classDocRef.id);
})
    .catch((error) => {
    console.error(`Error adding class document ${i}: `, error);
});
}
})
    .catch((error) => {
    console.error(`Error adding user document ${i}: `, error);
});
}
}

    // Call the function to add users and classes
    addRandomUsersAndClasses();
</script>
