import Link from "next/Link";

function Homepage() {
  return (
    <ul>
      <li>
        <Link href="/signup">Sign up</Link>
      </li>
      <li>
        <Link href="/login">Log in</Link>
      </li>
    </ul>
  );
}

export default Homepage;
