/*
  Warnings:

  - You are about to drop the column `postedById` on the `Link` table. All the data in the column will be lost.
  - You are about to drop the `User` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Vote` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `Link` DROP FOREIGN KEY `link_ibfk_1`;

-- DropForeignKey
ALTER TABLE `Vote` DROP FOREIGN KEY `vote_ibfk_1`;

-- DropForeignKey
ALTER TABLE `Vote` DROP FOREIGN KEY `vote_ibfk_2`;

-- AlterTable
ALTER TABLE `Link` DROP COLUMN `postedById`,
    ADD COLUMN `userId` INTEGER;

-- DropTable
DROP TABLE `User`;

-- DropTable
DROP TABLE `Vote`;
