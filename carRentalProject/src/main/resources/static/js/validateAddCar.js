/**
 * 
 */

function validateAddCarForm() {
    const carName = document.getElementById("carName").value;
    const plateNo = document.getElementById("plateNo").value;
    const driverName = document.getElementById("driverName").value;
    const driverPhone = document.getElementById("driverPhone").value;
    const totalPrice = document.getElementById("totalPrice").value;
    const fromLocation = document.getElementById("fromLocation").value;
    const toLocation = document.getElementById("toLocation").value;

    // Basic validation
    if (carName.length < 3 || !/^[a-zA-Z\s]+$/.test(carName)) {
        alert("Car name must be at least 3 characters and contain only letters and spaces.");
        return false;
    }

    if (plateNo.length < 3 || !/^[a-zA-Z0-9\s]+$/.test(plateNo)) {
        alert("Plate number must be at least 3 characters and contain only alphanumeric characters and spaces.");
        return false;
    }

    if (driverName.length < 3 || !/^[a-zA-Z\s]+$/.test(driverName)) {
        alert("Driver name must be at least 3 characters and contain only letters and spaces.");
        return false;
    }

    if (driverPhone.length !== 10 || !/^[0-9]+$/.test(driverPhone)) {
        alert("Driver phone number must be 10 digits.");
        return false;
    }

    if (totalPrice.length < 3) {
        alert("Total price must be at least 3 digits.");
        return false;
    }

    if (fromLocation === toLocation) {
        alert("From location and to location cannot be the same.");
        return false;
    }

    if (!/^[a-z]+$/.test(fromLocation) || !/^[a-z]+$/.test(toLocation)) {
        alert("From location and to location can only contain lowercase letters.");
        return false;
    }

    // Additional validation as needed (e.g., email, date formats)
    return true;
}