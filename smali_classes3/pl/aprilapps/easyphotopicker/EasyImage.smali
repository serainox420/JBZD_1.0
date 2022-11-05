.class public Lpl/aprilapps/easyphotopicker/EasyImage;
.super Ljava/lang/Object;
.source "EasyImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/aprilapps/easyphotopicker/EasyImage$a;,
        Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;
    }
.end annotation


# direct methods
.method private static a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method private static a(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 73
    invoke-static {p0, p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->c(Landroid/content/Context;I)V

    .line 74
    invoke-static {}, Lpl/aprilapps/easyphotopicker/EasyImage;->a()Landroid/content/Intent;

    move-result-object v0

    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 76
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)Lpl/aprilapps/easyphotopicker/b;

    move-result-object v2

    invoke-virtual {v2}, Lpl/aprilapps/easyphotopicker/b;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 330
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pl.aprilapps.easyphotopicker.last_photo"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    if-nez v2, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 334
    goto :goto_0
.end method

.method public static a(IILandroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$a;)V
    .locals 5

    .prologue
    const/16 v4, 0x236c

    const/16 v3, 0x136c

    const/16 v2, 0xb6c

    .line 277
    and-int/lit16 v0, p0, 0x36c

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 278
    :goto_0
    if-eqz v0, :cond_1

    .line 279
    and-int/lit16 v0, p0, -0x4001

    .line 280
    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_0

    if-ne v0, v2, :cond_1

    .line 281
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    .line 282
    if-ne v0, v2, :cond_3

    invoke-static {p2}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 283
    invoke-static {p2, p3, p4}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$a;)V

    .line 304
    :cond_1
    :goto_1
    return-void

    .line 277
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 284
    :cond_3
    if-ne v0, v3, :cond_4

    invoke-static {p2}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 285
    invoke-static {p2, p3, p4}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$a;)V

    goto :goto_1

    .line 286
    :cond_4
    if-ne v0, v4, :cond_5

    .line 287
    invoke-static {p3, p4}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$a;)V

    goto :goto_1

    .line 288
    :cond_5
    invoke-static {p2}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 289
    invoke-static {p3, p4}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$a;)V

    goto :goto_1

    .line 291
    :cond_6
    invoke-static {p2, p3, p4}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$a;)V

    goto :goto_1

    .line 294
    :cond_7
    if-ne v0, v2, :cond_8

    .line 295
    sget-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->DOCUMENTS:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p3}, Lpl/aprilapps/easyphotopicker/EasyImage;->d(Landroid/content/Context;)I

    move-result v1

    invoke-interface {p4, v0, v1}, Lpl/aprilapps/easyphotopicker/EasyImage$a;->a(Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_1

    .line 296
    :cond_8
    if-ne v0, v3, :cond_9

    .line 297
    sget-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->GALLERY:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p3}, Lpl/aprilapps/easyphotopicker/EasyImage;->d(Landroid/content/Context;)I

    move-result v1

    invoke-interface {p4, v0, v1}, Lpl/aprilapps/easyphotopicker/EasyImage$a;->a(Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_1

    .line 299
    :cond_9
    sget-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->CAMERA:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p3}, Lpl/aprilapps/easyphotopicker/EasyImage;->d(Landroid/content/Context;)I

    move-result v1

    invoke-interface {p4, v0, v1}, Lpl/aprilapps/easyphotopicker/EasyImage$a;->a(Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 227
    invoke-static {p0, p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 228
    const/16 v1, 0x136c

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 229
    return-void
.end method

.method private static a(Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$a;)V
    .locals 3

    .prologue
    .line 384
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pl.aprilapps.easyphotopicker.photo_uri"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 389
    :cond_0
    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImage;->e(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 391
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    if-nez v0, :cond_1

    .line 394
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to get the picture returned from camera"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 395
    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->CAMERA:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImage;->d(Landroid/content/Context;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lpl/aprilapps/easyphotopicker/EasyImage$a;->a(Ljava/lang/Exception;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    .line 404
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 405
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pl.aprilapps.easyphotopicker.last_photo"

    .line 406
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pl.aprilapps.easyphotopicker.photo_uri"

    .line 407
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 408
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 413
    :goto_1
    return-void

    .line 397
    :cond_1
    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)Lpl/aprilapps/easyphotopicker/b;

    move-result-object v2

    invoke-virtual {v2}, Lpl/aprilapps/easyphotopicker/b;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 398
    invoke-static {v0}, Lpl/aprilapps/easyphotopicker/c;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lpl/aprilapps/easyphotopicker/c;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 401
    :cond_2
    sget-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->CAMERA:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImage;->d(Landroid/content/Context;)I

    move-result v2

    invoke-interface {p1, v1, v0, v2}, Lpl/aprilapps/easyphotopicker/EasyImage$a;->a(Ljava/util/List;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 411
    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->CAMERA:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImage;->d(Landroid/content/Context;)I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lpl/aprilapps/easyphotopicker/EasyImage$a;->a(Ljava/lang/Exception;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 104
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 105
    const/4 v2, 0x3

    invoke-virtual {p0, v0, p2, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 99
    return-void
.end method

.method private static a(Landroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$a;)V
    .locals 4

    .prologue
    .line 342
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 343
    invoke-static {p1, v0}, Lpl/aprilapps/easyphotopicker/c;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 344
    invoke-static {v0}, Lpl/aprilapps/easyphotopicker/c;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->DOCUMENTS:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->d(Landroid/content/Context;)I

    move-result v3

    invoke-interface {p2, v1, v2, v3}, Lpl/aprilapps/easyphotopicker/EasyImage$a;->a(Ljava/util/List;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    .line 346
    invoke-static {p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)Lpl/aprilapps/easyphotopicker/b;

    move-result-object v1

    invoke-virtual {v1}, Lpl/aprilapps/easyphotopicker/b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    invoke-static {v0}, Lpl/aprilapps/easyphotopicker/c;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lpl/aprilapps/easyphotopicker/c;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 351
    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->DOCUMENTS:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->d(Landroid/content/Context;)I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lpl/aprilapps/easyphotopicker/EasyImage$a;->a(Ljava/lang/Exception;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 307
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 82
    invoke-static {p0, p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->c(Landroid/content/Context;I)V

    .line 84
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    :try_start_0
    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/EasyImage;->c(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    invoke-static {p0, v1, v0}, Lpl/aprilapps/easyphotopicker/EasyImage;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 89
    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lpl/aprilapps/easyphotopicker/b;
    .locals 1

    .prologue
    .line 431
    new-instance v0, Lpl/aprilapps/easyphotopicker/b;

    invoke-direct {v0, p0}, Lpl/aprilapps/easyphotopicker/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 252
    invoke-static {p0, p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 253
    const/16 v1, 0x236c

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 254
    return-void
.end method

.method private static b(Landroid/content/Intent;Landroid/app/Activity;Lpl/aprilapps/easyphotopicker/EasyImage$a;)V
    .locals 4

    .prologue
    .line 357
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    .line 358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 359
    if-nez v1, :cond_2

    .line 360
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 361
    invoke-static {p1, v0}, Lpl/aprilapps/easyphotopicker/c;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    .line 362
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_0
    invoke-static {p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->b(Landroid/content/Context;)Lpl/aprilapps/easyphotopicker/b;

    move-result-object v0

    invoke-virtual {v0}, Lpl/aprilapps/easyphotopicker/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    invoke-static {p1, v2}, Lpl/aprilapps/easyphotopicker/c;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 375
    :cond_1
    sget-object v0, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->GALLERY:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->d(Landroid/content/Context;)I

    move-result v1

    invoke-interface {p2, v2, v0, v1}, Lpl/aprilapps/easyphotopicker/EasyImage$a;->a(Ljava/util/List;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    .line 380
    :goto_0
    return-void

    .line 364
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 365
    invoke-virtual {v1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 366
    invoke-static {p1, v3}, Lpl/aprilapps/easyphotopicker/c;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    .line 367
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 376
    :catch_0
    move-exception v0

    .line 377
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 378
    sget-object v1, Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;->GALLERY:Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;

    invoke-static {p1}, Lpl/aprilapps/easyphotopicker/EasyImage;->d(Landroid/content/Context;)I

    move-result v2

    invoke-interface {p2, v0, v1, v2}, Lpl/aprilapps/easyphotopicker/EasyImage$a;->a(Ljava/lang/Exception;Lpl/aprilapps/easyphotopicker/EasyImage$ImageSource;I)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Landroid/net/Uri;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p0}, Lpl/aprilapps/easyphotopicker/c;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 56
    invoke-static {p0, v0}, Lpl/aprilapps/easyphotopicker/c;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 57
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 58
    const-string v3, "pl.aprilapps.easyphotopicker.photo_uri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    const-string v3, "pl.aprilapps.easyphotopicker.last_photo"

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    return-object v1
.end method

.method private static c(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 145
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pl.aprilapps.easyphotopicker.type"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method

.method private static d(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 149
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pl.aprilapps.easyphotopicker.type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static e(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 268
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pl.aprilapps.easyphotopicker.last_photo"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    if-eqz v1, :cond_0

    .line 270
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    :cond_0
    return-object v0
.end method
