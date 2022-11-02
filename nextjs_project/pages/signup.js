import { Col, Row } from "react-bootstrap"
import Image from "next/image"
import ImageMain from "next/image"
import styles from "../styles/signup.module.css"
import AccountCircleIcon from "@mui/icons-material/AccountCircle"
import VisibilityIcon from "@mui/icons-material/Visibility"
import EmailIcon from "@mui/icons-material/Email"
import LocationCityIcon from "@mui/icons-material/LocationCity"
export default function Home() {
  return (
    <Row className={styles.mask}>
      <div className={styles.colleft}>
        <Col className={styles.col1}>
          <div className={styles.logo}>
            <Image src="/IMG_0674.png" alt="me" width="64" height="64" />
          </div>
          <div class="form-floating mb-3" dir="rtl">
            <input type="text" class="form-control" id="floatingInput" placeholder="الاسم كامل"></input>
            <label for="floatingInput" className={styles.input}>
              الاسم كامل
              <AccountCircleIcon />
            </label>
          </div>
          <div class="form-floating mb-3" dir="rtl">
            <input type="email" class="form-control" id="floatingEmail" placeholder="الايميل" />
            <label for="floatingEmail" className={styles.input}>
              الايميل
              <EmailIcon />
            </label>
          </div>
          <div class="form-floating mb-3" dir="rtl">
            <input type="password" class="form-control" id="floatingPassword" placeholder="كلمة المرور" />
            <label for="floatingPassword" className={styles.input}>
              كلمة المرور <VisibilityIcon />
            </label>
          </div>
          <div class="form-floating mb-3" dir="rtl">
            <input type="text" class="form-control" id="floatingInput" placeholder="البلد" />
            <label for="floatingInput" className={styles.input}>
              البلد
              <LocationCityIcon />
            </label>
          </div>
          <div className={styles.bakbtn}>
            <button type="button" className={styles.btn}>
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
  )
}
