<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
        body {
  font-family: Arial, sans-serif; /* Set a clean font */
  background-color: #f4f4f9; /* Light background color */
  margin: 0;
  padding: 0;
  text-align: center; /* Center align the content */
}

/* Styling for the marquee */
marquee {
  font-size: 24px; /* Increase font size */
  color: black; /* Set text color */
  font-weight: bold; /* Make text bold */
  padding: 20px; /* Add some spacing around the marquee */
  background-color: #e8f4fc; /* Light blue background */
  border: 2px solid #007BFF; /* Add border around marquee */
  border-radius: 5px; /* Slightly rounded corners */
}

/* Styling for the button inside the link */
a button {
  background-color: black; /* Green color */
  color: white; /* White text */
  border: none; /* Remove border */
  padding: 12px 24px; /* Add padding */
  font-size: 18px; /* Larger font size */
  border-radius: 8px; /* Rounded corners */
  cursor: pointer; /* Pointer on hover */
  text-transform: uppercase; /* Uppercase text */
  transition: background-color 0.3s ease, transform 0.2s ease; /* Smooth hover effects */
}

/* Hover effect for the button */
a button:hover {
  background-color: #218838; /* Darker green on hover */
  transform: scale(1.05); /* Slight zoom effect */
}

/* Styling for h1 */
h1 {
  margin-top: 20px; /* Add margin at the top */
  font-size: 32px; /* Adjust font size */
  color: #333; /* Dark gray text color */
}
        }
    </style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1><marquee scrollamount=15>Welcome to Event Management System</marquee></h1>
<a href="create.jsp">
<button>Create Event</button>
</a>

</body>
</html>