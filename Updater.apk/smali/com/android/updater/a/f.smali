.class public Lcom/android/updater/a/f;
.super Ljava/lang/Object;
.source "SysUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "8007236f-a2d6-4847-ac83-c49395ad6d65"

    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/updater/a/d;->a([B)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1}, Lcom/android/updater/a/b;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v0, "s="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/updater/a/f;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 311
    return-void
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f050025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 317
    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 320
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 321
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/AccountManagerCallback;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 193
    const-string v1, "com.miui.auth"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 194
    array-length v2, v1

    if-lez v2, :cond_0

    .line 195
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1, v3, v3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 197
    :cond_0
    const-string v1, "com.miui.auth"

    const-string v2, "miuiToken"

    move-object v5, p0

    check-cast v5, Landroid/app/Activity;

    move-object v4, v3

    move-object v6, p1

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 199
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;IIILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 384
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/updater/a/f;->a(Landroid/content/Context;Landroid/content/Intent;IILjava/lang/String;Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 364
    const/high16 v0, 0x4000

    invoke-static {p0, v4, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 367
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 368
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 369
    invoke-virtual {p0, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 370
    invoke-virtual {v1, p5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 371
    invoke-virtual {v1, p6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 372
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 373
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 375
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 376
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 379
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 380
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 381
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/updater/a/f;->a(Landroid/content/Context;Landroid/content/Intent;IIILjava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;Ljava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    if-nez p1, :cond_0

    .line 414
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    invoke-virtual {p1}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    .line 405
    :goto_1
    invoke-static {p0, p1}, Lcom/android/updater/a/f;->d(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 406
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Lcom/android/updater/a/c;->c(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, p4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 407
    const v2, 0x7f05003e

    const v3, 0x7f020046

    move-object v0, p0

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/android/updater/a/f;->a(Landroid/content/Context;Landroid/content/Intent;IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v5, p2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;ZLcom/android/updater/customTypes/UpdateInfo;)Z
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0x400

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 425
    if-nez p2, :cond_1

    move v0, v2

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 430
    :cond_1
    const v1, 0x7f05001b

    .line 431
    const v0, 0x7f05001a

    .line 432
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v4, :cond_9

    .line 434
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lcom/android/updater/customTypes/UpdateInfo;->t()Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v2

    .line 436
    goto :goto_0

    .line 438
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 439
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x4d

    if-ne v6, v7, :cond_7

    move v6, v3

    .line 441
    :goto_1
    const/4 v7, 0x0

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 442
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    float-to-long v4, v4

    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    .line 443
    if-eqz v6, :cond_4

    .line 444
    mul-long/2addr v4, v9

    .line 446
    :cond_4
    mul-long/2addr v4, v9

    long-to-double v4, v4

    const-wide v6, 0x3ff199999999999aL

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/updater/a/f;->f(J)Z

    move-result v2

    .line 447
    if-nez v2, :cond_5

    sget-boolean v4, Lmiui/os/Build;->IS_MIONE:Z

    if-eqz v4, :cond_5

    move v2, v3

    .line 450
    :cond_5
    if-eqz v2, :cond_8

    .line 451
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/updater/a/f;->am()Ljava/io/File;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 452
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 453
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    move v11, v0

    move v0, v2

    move v2, v1

    move v1, v11

    .line 464
    :goto_3
    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 465
    invoke-static {p0, v2, v1}, Lcom/android/updater/a/f;->a(Landroid/content/Context;II)V

    goto :goto_0

    :cond_7
    move v6, v2

    .line 439
    goto :goto_1

    .line 456
    :cond_8
    const v1, 0x7f05001d

    .line 457
    const v0, 0x7f05001c

    goto :goto_2

    .line 459
    :catch_0
    move-exception v3

    move v11, v0

    move v0, v2

    move v2, v1

    move v1, v11

    goto :goto_3

    :cond_9
    move v11, v0

    move v0, v2

    move v2, v1

    move v1, v11

    goto :goto_3
.end method

.method public static ae()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "http://miuiandroid.com/ota/update.php"

    return-object v0
.end method

.method public static af()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "http://api.chat.xiaomi.net/v2/user/0/log"

    return-object v0
.end method

.method public static ag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    const-string v0, "http://www.miui.com/changelog.html?v=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/updater/a/f;->ai()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ah()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/updater/a/f;->ai()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static aj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static ak()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    const-string v0, "ro.product.mod_device"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static al()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    const-string v0, ""

    .line 251
    :cond_0
    return-object v0
.end method

.method public static am()Ljava/io/File;
    .locals 3

    .prologue
    .line 503
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/os/Environment;->getStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "downloaded_rom"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/android/updater/a/f;->al()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {p0}, Lcom/android/updater/a/f;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%s?g=%s&v=%s&c=%s&d=%s&i=%s&b=%s"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/android/updater/a/f;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lcom/android/updater/a/f;->ah()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {}, Lcom/android/updater/a/f;->aj()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {}, Lcom/android/updater/a/f;->ak()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    const/4 v0, 0x6

    invoke-static {p0}, Lcom/android/updater/a/f;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&t="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-static {}, Lcom/android/updater/a/f;->al()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v1, "{\"IMEI\":\"%s\",\"I\":%s}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v2, "t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/a/d;->a([B)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 105
    const-string v0, "&uuid=0&value=miui_install&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {v1, p0}, Lcom/android/updater/a/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_MESSAGE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    const-string v1, "android.intent.extra.update_application_component_name"

    const-string v2, "com.android.updater/.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    if-lez p1, :cond_0

    .line 302
    const-string v1, "android.intent.extra.update_application_message_text"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v1, "android.intent.extra.update_application_message_text_background"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 307
    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 274
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 275
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "check_update_only_wifi_available"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 277
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-static {}, Lcom/android/updater/a/f;->al()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {p0}, Lcom/android/updater/a/f;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 124
    const-string v2, "{\"IMEI\":\"%s\",\"model\":\"%s\",\"version\":\"%s\",\"isbind\":\"%s\"}"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/updater/a/f;->ak()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-static {}, Lcom/android/updater/a/f;->ah()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x3

    if-eqz v1, :cond_0

    const-string v0, "1"

    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v2, "t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/a/d;->a([B)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 129
    const-string v0, "&uuid=0&value=miui_user&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {v1, p1}, Lcom/android/updater/a/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-static {}, Lcom/android/updater/a/f;->al()Ljava/lang/String;

    move-result-object v0

    .line 112
    const-string v1, "{\"IMEI\":\"%s\",\"U\":%s}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string v2, "t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/updater/a/d;->a([B)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, "&uuid=0&value=miui_usage&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {v1, p0}, Lcom/android/updater/a/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 417
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 418
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 419
    return-void
.end method

.method public static c(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 287
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 288
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_stable_version_only"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 290
    return-void

    .line 287
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/io/File;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 331
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    .line 335
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide v3, 0x9a7ec800L

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 338
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Landroid/content/Intent;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/updater/ApplyUpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 389
    invoke-static {p0, p1}, Lcom/android/updater/a/c;->c(Landroid/content/Context;Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-static {p1}, Lcom/android/updater/F;->f(Lcom/android/updater/customTypes/UpdateInfo;)V

    .line 391
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/android/updater/a/f;->am()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 392
    const-string v2, "update_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-static {}, Lcom/android/updater/a/f;->al()Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    const-string v2, "addition=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v0, "&t=miui_active_user&uuid=0&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {v1, p1}, Lcom/android/updater/a/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/io/File;)V
    .locals 5
    .parameter

    .prologue
    .line 345
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    :cond_0
    return-void

    .line 348
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 349
    if-eqz v1, :cond_0

    .line 350
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 351
    invoke-static {v3}, Lcom/android/updater/a/f;->c(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 352
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 350
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static f(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    invoke-static {}, Lmiui/os/Environment;->getStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 235
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v3, v1

    .line 237
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    .line 238
    mul-long/2addr v1, v3

    cmp-long v1, p0, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 142
    invoke-static {p0}, Lcom/android/updater/a/f;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/updater/a/f;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmiui/os/Build;->isDevelopmentVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 147
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 149
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h(Lcom/android/updater/customTypes/UpdateInfo;)Ljava/io/File;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 477
    if-nez p0, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-object v0

    .line 479
    :cond_1
    invoke-virtual {p0}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/updater/a/f;->am()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 485
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 486
    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 153
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 155
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Lcom/android/updater/customTypes/UpdateInfo;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 492
    if-nez p0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-object v0

    .line 494
    :cond_1
    invoke-virtual {p0}, Lcom/android/updater/customTypes/UpdateInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 495
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 498
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/updater/a/f;->am()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 161
    invoke-static {p0}, Lcom/android/updater/a/f;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/updater/a/f;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 2
    .parameter

    .prologue
    .line 165
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 166
    const-string v1, "com.miui.auth"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 167
    array-length v1, v0

    if-lez v1, :cond_0

    .line 168
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 171
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    invoke-static {p0}, Lcom/android/updater/a/f;->j(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_0

    .line 179
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 180
    const-string v3, "token"

    invoke-virtual {v2, v1, v3}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    if-eqz v1, :cond_0

    .line 182
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 227
    invoke-static {p0}, Lcom/android/updater/a/f;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "S"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "X"

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 256
    .line 257
    invoke-static {}, Lmiui/os/Build;->isDevelopmentVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 261
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "upload_log_pref"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 263
    if-eqz v0, :cond_0

    :goto_1
    return v1

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "check_update_only_wifi_available"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 270
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_stable_version_only"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 283
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static q(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 507
    new-instance v0, Lcom/android/updater/a/a;

    invoke-direct {v0, p0}, Lcom/android/updater/a/a;-><init>(Landroid/content/Context;)V

    .line 508
    invoke-virtual {v0}, Lcom/android/updater/a/a;->k()I

    move-result v0

    .line 509
    if-eqz v0, :cond_0

    .line 510
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/updater/UpdaterBackgroundService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    const-string v2, "command"

    const-string v3, "check_update"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const-string v2, "check_type"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 515
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 59
    if-nez p0, :cond_0

    .line 60
    const-string p0, ""

    .line 62
    :cond_0
    const-string v0, "http://www.miui.com/api.php?mod=wm&v=%s&r=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/updater/a/f;->ai()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
