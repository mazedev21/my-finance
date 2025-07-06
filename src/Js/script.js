//Script for login and sign up page switch animation
const container = document.getElementById('container');
const switchToSignUp = document.getElementById('switchToSignUp');
const switchToLogin = document.getElementById('switchToLogin');

switchToSignUp.addEventListener('click', () => {
  container.classList.add('right-panel-active');
});

switchToLogin.addEventListener('click', () => {
  container.classList.remove('right-panel-active');
});


//information table
function showSection(section) {
    // Semua tabel dan budget
    const tables = ['needs', 'wants', 'others', 'income'];
    
    tables.forEach(type => {
        // Tampilkan/ sembunyikan table
        document.getElementById(`table-${type}`).style.display = (type === section) ? 'table' : 'none';

        // Tampilkan/ sembunyikan budget
        document.getElementById(`budget-${type}`).style.display = (type === section) ? 'block' : 'none';
    });

    // Update button active class
    const buttons = document.querySelectorAll('.tbutton');
    buttons.forEach(btn => btn.classList.remove('tbutton-active'));
    
    event.target.classList.add('tbutton-active');
}

// Close popup
function closePopUp() {
  document.getElementById("pop-up").style.display = "none";
}

function closePopUpNeeds() {
  document.getElementById("formAddMoreNeeds").style.display = "none";
}

function closePopUpWants() {
  document.getElementById("formAddMoreWants").style.display = "none";
}

function closePopUpOthers() {
  document.getElementById("formAddMoreOthers").style.display = "none";
}

function closePopUpIncome() {
  document.getElementById("formAddMoreIncome").style.display = "none";
}

// Open popup
function openPopUp() {
  document.getElementById("pop-up").style.display = "flex";
}

function openPopUpNeeds() {
  document.getElementById("formAddMoreNeeds").style.display = "flex";
}

function openPopUpWants() {
  document.getElementById("formAddMoreWants").style.display = "flex";
}

function openPopUpOthers() {
  document.getElementById("formAddMoreOthers").style.display = "flex";
}

function openPopUpIncome() {
  document.getElementById("formAddMoreIncome").style.display = "flex";
}