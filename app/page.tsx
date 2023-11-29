"use client";

import styles from "./page.module.css";
import { CldImage } from "next-cloudinary";

export default function Home() {
  return (
    <main className={styles.main}>
      <CldImage
        alt=""
        width="600"
        height="600"
        src="PortfolioSite/Itab_outdoorsy_desert_horizontal_p92vrs"
      />
    </main>
  );
}
