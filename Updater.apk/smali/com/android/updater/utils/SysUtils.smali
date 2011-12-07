.class public Lcom/android/updater/utils/SysUtils;
.super Ljava/lang/Object;
.source "SysUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAccount(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V
    .locals 9
    .parameter "paramContext"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .line 115
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 116
    .local v0, localAccountManager:Landroid/accounts/AccountManager;
    const-string v1, "com.miui.auth"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    check-cast v8, [Landroid/accounts/Account;

    .line 117
    .local v8, arrayOfAccount:[Landroid/accounts/Account;
    array-length v1, v8

    if-lez v1, :cond_0

    .line 118
    const/4 v1, 0x0

    aget-object v1, v8, v1

    invoke-virtual {v0, v1, v3, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 120
    :cond_0
    const-string v1, "com.miui.auth"

    const-string v2, "miuiToken"

    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    move-object v4, v3

    move-object v6, p1

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 122
    return-void
.end method

.method public static appendVersionInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "url"

    .prologue
    .line 58
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getShortIMEI()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, imeiParam:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/updater/utils/SysUtils;->getMIUIAccountToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, token:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%s?g=%s&v=%s&b=%s&d=%s&i=%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/android/updater/utils/SysUtils;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getModVersion()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getBoardString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getDeviceString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&t="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public static canFileBeDeleted(Ljava/io/File;)Z
    .locals 7
    .parameter "file"

    .prologue
    const/4 v2, 0x0

    .line 255
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 265
    :cond_0
    :goto_0
    return v2

    .line 258
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 259
    .local v0, lastModifiedTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide v5, 0x9a7ec800L

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 262
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "notifyId"

    .prologue
    .line 334
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 335
    .local v0, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 336
    return-void
.end method

.method public static checkExistingRomFile(Lcom/android/updater/customTypes/UpdateInfo;)Ljava/io/File;
    .locals 6
    .parameter "updateInfo"

    .prologue
    const/4 v3, 0x0

    .line 399
    if-nez p0, :cond_1

    move-object v0, v3

    .line 412
    :cond_0
    :goto_0
    return-object v0

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 402
    .local v2, updateRomName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    .line 403
    goto :goto_0

    .line 406
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/updater/misc/Constants;->ROM_FOLDER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, romPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, romFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    .line 412
    goto :goto_0
.end method

.method public static deleteTrashFiles(Ljava/io/File;)V
    .locals 6
    .parameter "dir"

    .prologue
    .line 269
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 280
    :cond_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 273
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 274
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 275
    .local v1, file:Ljava/io/File;
    invoke-static {v1}, Lcom/android/updater/utils/SysUtils;->canFileBeDeleted(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 276
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 274
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static displayDebugOutput()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public static downloadUpdate(Landroid/content/Context;ZLcom/android/updater/customTypes/UpdateInfo;)Z
    .locals 13
    .parameter "context"
    .parameter "isHidden"
    .parameter "updateInfo"

    .prologue
    .line 350
    if-nez p2, :cond_1

    .line 351
    const/4 v1, 0x0

    .line 389
    :cond_0
    :goto_0
    return v1

    .line 354
    :cond_1
    const/4 v1, 0x0

    .line 355
    .local v1, canDownload:Z
    const v8, 0x7f050010

    .line 356
    .local v8, titleRes:I
    const v0, 0x7f05000f

    .line 357
    .local v0, bodyRes:I
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 359
    :try_start_0
    invoke-virtual {p2}, Lcom/android/updater/customTypes/UpdateInfo;->getFileSize()Ljava/lang/String;

    move-result-object v2

    .line 360
    .local v2, filesize:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 361
    const/4 v1, 0x0

    goto :goto_0

    .line 363
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 364
    .local v5, length:I
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x4d

    if-ne v9, v10, :cond_5

    const/4 v4, 0x1

    .line 366
    .local v4, isM:Z
    :goto_1
    const/4 v9, 0x0

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 368
    .local v6, needInKB:J
    if-eqz v4, :cond_3

    .line 369
    const-wide/16 v9, 0x400

    mul-long/2addr v6, v9

    .line 371
    :cond_3
    const-wide/16 v9, 0x400

    mul-long/2addr v9, v6

    long-to-double v9, v9

    const-wide v11, 0x3ff199999999999aL

    mul-double/2addr v9, v11

    double-to-long v9, v9

    invoke-static {v9, v10}, Lcom/android/updater/utils/SysUtils;->enoughSpaceOnSdCard(J)Z

    move-result v1

    .line 372
    if-eqz v1, :cond_6

    .line 373
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/updater/misc/Constants;->ROM_FOLDER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 374
    .local v3, foo:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 375
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    .end local v2           #filesize:Ljava/lang/String;
    .end local v3           #foo:Ljava/io/File;
    .end local v4           #isM:Z
    .end local v5           #length:I
    .end local v6           #needInKB:J
    :cond_4
    :goto_2
    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 387
    invoke-static {p0, v8, v0}, Lcom/android/updater/utils/SysUtils;->showDialog(Landroid/content/Context;II)V

    goto/16 :goto_0

    .line 364
    .restart local v2       #filesize:Ljava/lang/String;
    .restart local v5       #length:I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 378
    .restart local v4       #isM:Z
    .restart local v6       #needInKB:J
    :cond_6
    const v8, 0x7f050012

    .line 379
    const v0, 0x7f050011

    goto :goto_2

    .line 381
    .end local v2           #filesize:Ljava/lang/String;
    .end local v4           #isM:Z
    .end local v5           #length:I
    .end local v6           #needInKB:J
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method public static enoughSpaceOnSdCard(J)Z
    .locals 10
    .parameter "UpdateSize"

    .prologue
    const/4 v7, 0x0

    .line 148
    invoke-static {}, Lmiui/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 149
    .local v6, status:Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v7

    .line 151
    :cond_1
    sget-object v4, Lcom/android/updater/misc/Constants;->SDCARD_FOLDER:Ljava/io/File;

    .line 152
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 153
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v8

    int-to-long v2, v8

    .line 154
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v0, v8

    .line 155
    .local v0, availableBlocks:J
    mul-long v8, v0, v2

    cmp-long v8, p0, v8

    if-gez v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static getBoardString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method private static getIMEI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, imei:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const-string v0, ""

    .line 192
    .end local v0           #imei:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getIncrementalVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getMIUIAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 3
    .parameter "context"

    .prologue
    .line 87
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 88
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v2, "com.miui.auth"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 89
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v2, v1

    if-lez v2, :cond_0

    .line 90
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 93
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getMIUIAccountToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, token:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/updater/utils/SysUtils;->getMIUIAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 100
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 103
    .local v1, accountManager:Landroid/accounts/AccountManager;
    const-string v5, "token"

    invoke-virtual {v1, v0, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, userData:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 105
    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 111
    .end local v1           #accountManager:Landroid/accounts/AccountManager;
    .end local v4           #userData:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 107
    :catch_0
    move-exception v2

    .line 108
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getModVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getIncrementalVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRomPath(Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;
    .locals 4
    .parameter "updateInfo"

    .prologue
    const/4 v0, 0x0

    .line 416
    if-nez p0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-object v0

    .line 418
    :cond_1
    invoke-virtual {p0}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, updateRomName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/updater/misc/Constants;->ROM_FOLDER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, romPath:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getRomUpdateFileURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "http://miuiandroid.com/ota/update.php"

    return-object v0
.end method

.method public static getShortIMEI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 168
    const/16 v0, 0x9

    .line 170
    .local v0, LENGTH:I
    invoke-static {}, Lcom/android/updater/utils/SysUtils;->getIMEI()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, shortImei:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 172
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 174
    .local v1, length:I
    const/16 v3, 0x9

    if-lt v1, v3, :cond_0

    .line 175
    add-int/lit8 v3, v1, -0x9

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 179
    .end local v1           #length:I
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, ""

    .end local v2           #shortImei:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionUploadURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "http://miuiandroid.com/ota/update.php"

    return-object v0
.end method

.method public static isCheckUpdateOnlyWifiAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "check_update_only_wifi_available"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 204
    .local v0, check:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isConnectivityActive(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 75
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isUserAllowLog(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "upload_log_pref"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 198
    .local v0, allow:I
    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiConnected(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 79
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 82
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setCheckUpdateOnlyWifiAvailable(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isCheckUpdateOnlyWifiAvailable"

    .prologue
    .line 208
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 209
    .local v0, check:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "check_update_only_wifi_available"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 211
    return-void

    .line 208
    .end local v0           #check:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showBubble(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "iconId"

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.update_application_flatten_name"

    const-string v3, "com.android.updater/.MainActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    if-lez p1, :cond_0

    const-string v1, " "

    .line 223
    .local v1, message:Ljava/lang/String;
    :goto_0
    const-string v2, "android.intent.extra.update_application_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v2, "android.intent.extra.update_application_message_background"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 226
    return-void

    .line 222
    .end local v1           #message:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showDialog(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "titleRes"
    .parameter "bodyRes"

    .prologue
    .line 229
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/updater/utils/SysUtils;->showDialog(Landroid/content/Context;ILjava/lang/String;)V

    .line 230
    return-void
.end method

.method public static showDialog(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "titleRes"
    .parameter "body"

    .prologue
    .line 233
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f05001a

    new-instance v3, Lcom/android/updater/utils/SysUtils$1;

    invoke-direct {v3}, Lcom/android/updater/utils/SysUtils$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 241
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 244
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 245
    return-void
.end method

.method public static showNotification(Landroid/content/Context;Landroid/content/Intent;IIILjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "intent"
    .parameter "iconRes"
    .parameter "titleRes"
    .parameter "bodyTitleRes"
    .parameter "body"

    .prologue
    .line 305
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/updater/utils/SysUtils;->showNotification(Landroid/content/Context;Landroid/content/Intent;IILjava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public static showNotification(Landroid/content/Context;Landroid/content/Intent;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "intent"
    .parameter "notificationId"
    .parameter "iconRes"
    .parameter "titleRes"
    .parameter "bodyTitle"
    .parameter "body"

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 289
    .local v3, res:Landroid/content/res/Resources;
    const/4 v4, 0x0

    const/high16 v5, 0x4000

    invoke-static {p0, v4, p1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 292
    .local v0, contentIntent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification;

    invoke-virtual {v3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v1, p3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 296
    .local v1, notification:Landroid/app/Notification;
    const/16 v4, 0x10

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 297
    invoke-virtual {v1, p0, p5, p6, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 298
    const/4 v4, 0x4

    iput v4, v1, Landroid/app/Notification;->defaults:I

    .line 300
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 301
    .local v2, notificationManager:Landroid/app/NotificationManager;
    invoke-virtual {v2, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 302
    return-void
.end method

.method public static showNotification(Landroid/content/Context;Landroid/content/Intent;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "intent"
    .parameter "iconRes"
    .parameter "titleRes"
    .parameter "bodyTitle"
    .parameter "body"

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/updater/utils/SysUtils;->showNotification(Landroid/content/Context;Landroid/content/Intent;IIILjava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public static showNotification(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;Ljava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-virtual {p1}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 317
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/android/updater/ApplyUpdateActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 318
    invoke-static {p0, p1}, Lcom/android/updater/utils/StringUtils;->getModName(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {p1}, Lcom/android/updater/ApplyUpdateActivity;->setUpdateInfo(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 320
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/updater/misc/Constants;->ROM_FOLDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 321
    const-string v2, "update_info"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/android/updater/utils/StringUtils;->getModName(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, p4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 324
    const v2, 0x7f050033

    const v3, 0x7f02001c

    move-object v0, p0

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/android/updater/utils/SysUtils;->showNotification(Landroid/content/Context;Landroid/content/Intent;IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v5, p2

    goto :goto_1
.end method

.method public static trimUpdatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/updater/misc/Constants;->SDCARD_FOLDER:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, sdcardPath:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 343
    :cond_0
    return-object p0
.end method
