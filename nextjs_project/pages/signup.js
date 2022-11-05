import { Col, Row } from "react-bootstrap";
import Image from "next/image";
import ImageMain from "next/image";
import styles from "../styles/signup.module.css";
import AccountCircleIcon from "@mui/icons-material/AccountCircle";
import VisibilityIcon from "@mui/icons-material/Visibility";
import EmailIcon from "@mui/icons-material/Email";
import { toast, ToastContainer } from "react-nextjs-toast";
import LocationCityIcon from "@mui/icons-material/LocationCity";
import { useState } from "react";

export default function Signup() {
  const [fullname, setFullname] = useState("");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [city, setCity] = useState("");

  const signup = async (e) => {
    e.preventDefault();
    try {
      await fetch("http://localhost:8000/signup/", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(fullname, email, password, city),
      });
      if (user.status === 200) {
        toast.notify("signup success");
      }
    } catch (error) {
      if (error.response) toast.error(error.response.data);
      else console.log(error);
    }
  };

  return (
    <Row className={styles.mask}>
      <div className={styles.colleft}>
        <Col className={styles.col1}>
          <div className={styles.logo}>
            <Image src="/IMG_0674.png" alt="me" width="64" height="64" />
          </div>
          <div class="form-floating mb-3" dir="rtl">
            <input
              type="text"
              class="form-control"
              id="floatingInput"
              placeholder="الاسم الكامل"
              name="fullname"
              onChange={(e) => setFullname(e.target.value)}
            ></input>
            <label for="floatingInput" className={styles.input}>
              الاسم الكامل
              <AccountCircleIcon />
            </label>
          </div>
          <div class="form-floating mb-3" dir="rtl">
            <input
              type="email"
              class="form-control"
              id="floatingEmail"
              placeholder="الايميل"
              name="email"
              onChange={(e) => setEmail(e.target.value)}
            />
            <label for="floatingEmail" className={styles.input}>
              الايميل
              <EmailIcon />
            </label>
          </div>
          <div class="form-floating mb-3" dir="rtl">
            <input
              type="password"
              class="form-control"
              id="floatingPassword"
              placeholder="كلمة المرور"
              name="password"
              onChange={(e) => setPassword(e.target.value)}
            />
            <label for="floatingPassword" className={styles.input}>
              كلمة المرور <VisibilityIcon />
            </label>
          </div>
          <div class="form-floating mb-3" dir="rtl">
            <input
              type="text"
              class="form-control"
              id="floatingInput"
              placeholder="البلد"
              name="city"
              onChange={(e) => setCity(e.target.value)}
            />
            <label for="floatingInput" className={styles.input}>
              البلد
              <LocationCityIcon />
            </label>
          </div>
          <div className={styles.bakbtn}>
            <button type="button" className={styles.btn} onClick={signup}>
              انشاء حساب
            </button>
          </div>
        </Col>
        <Col className={styles.col2}>
          <div className={styles.img}>
            <ImageMain src="/ImgMain.jpg" alt="me" width="800" height="464" />
          </div>
        </Col>
      </div>
    </Row>
  );
}
