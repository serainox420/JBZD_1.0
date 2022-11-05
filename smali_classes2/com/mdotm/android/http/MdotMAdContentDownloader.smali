.class public Lcom/mdotm/android/http/MdotMAdContentDownloader;
.super Ljava/lang/Object;
.source "MdotMAdContentDownloader.java"


# static fields
.field protected static isVastDownloadError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mdotm/android/http/MdotMAdContentDownloader;->isVastDownloadError:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFileName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 417
    const-string v0, "\\"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 418
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 419
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 420
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 421
    const-string v1, "?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 422
    if-nez p2, :cond_0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_0
    return-object v0
.end method

.method private setMimeType(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 399
    const-string v0, "jpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    :cond_0
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->imageResource:I

    .line 411
    :goto_0
    return v0

    .line 402
    :cond_1
    const-string v0, "mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "m4v"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    const-string v0, "avi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "3gp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 404
    const-string v0, "mpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mpg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "webm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    :cond_2
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->videoResource:I

    goto :goto_0

    .line 406
    :cond_3
    const-string v0, "gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 407
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->gifImageResource:I

    goto :goto_0

    .line 408
    :cond_4
    const-string v0, "webarchive"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 409
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->htmlResource:I

    goto :goto_0

    .line 411
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public downloadResources(Lcom/mdotm/android/vast/VastAd;Lcom/mdotm/android/model/MdotMAdResponse;ILandroid/content/Context;Z)V
    .locals 8

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x0

    .line 41
    if-eqz p1, :cond_25

    .line 42
    const/4 v0, 0x1

    move v4, v0

    .line 45
    :goto_0
    const/4 v1, 0x0

    .line 46
    if-nez v4, :cond_3

    .line 47
    invoke-virtual {p2}, Lcom/mdotm/android/model/MdotMAdResponse;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    .line 92
    :goto_1
    if-eqz v2, :cond_21

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 93
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_21

    .line 96
    :try_start_0
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-direct {p0, v0}, Lcom/mdotm/android/http/MdotMAdContentDownloader;->setMimeType(Ljava/lang/String;)I

    move-result v5

    .line 101
    if-eqz v4, :cond_4

    .line 104
    invoke-virtual {v3, v5}, Lcom/mdotm/android/vast/AdResource;->setResourceType(I)V

    .line 109
    :goto_2
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->imageResource:I

    if-eq v5, v0, :cond_0

    .line 110
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->videoResource:I

    if-eq v5, v0, :cond_0

    .line 111
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->gifImageResource:I

    if-ne v5, v0, :cond_2

    .line 113
    :cond_0
    const-string v0, "image/video/gifimage resource"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v2, p5}, Lcom/mdotm/android/http/MdotMAdContentDownloader;->getFileName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 116
    if-eqz p3, :cond_7

    if-eqz p5, :cond_7

    .line 117
    const/4 v0, 0x2

    if-ne p3, v0, :cond_5

    .line 118
    new-instance v1, Ljava/io/File;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    sget-object v7, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    sget-object v7, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 128
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 175
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 176
    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    .line 178
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/AdResource;->setUrl(Ljava/lang/String;)V

    .line 179
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :cond_2
    :goto_4
    return-void

    .line 50
    :cond_3
    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v5

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "isVast size = "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    if-eqz v5, :cond_24

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 55
    const-string v0, "inside content downlader"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/BaseVastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/BaseVastAd;->getAdType()I

    move-result v0

    .line 58
    packed-switch v0, :pswitch_data_0

    .line 79
    :goto_5
    :pswitch_0
    if-eqz v2, :cond_23

    .line 80
    invoke-virtual {v2}, Lcom/mdotm/android/vast/AdResource;->getDelivery()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_23

    .line 81
    invoke-virtual {v2}, Lcom/mdotm/android/vast/AdResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 84
    :goto_6
    if-nez v3, :cond_2

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_1

    .line 60
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/LinearAd;

    .line 61
    invoke-virtual {v0}, Lcom/mdotm/android/vast/LinearAd;->getAdResource()Lcom/mdotm/android/vast/AdResource;

    move-result-object v2

    goto :goto_5

    .line 64
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/Companion;

    .line 65
    invoke-virtual {v0}, Lcom/mdotm/android/vast/Companion;->getHTMLResource()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "html"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v3, Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-direct {v3}, Lcom/mdotm/android/model/MdotMAdResponse;-><init>()V

    .line 68
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 70
    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->htmlResource:I

    invoke-virtual {v3, v5}, Lcom/mdotm/android/model/MdotMAdResponse;->setResourceType(I)V

    .line 71
    invoke-virtual {v3, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 73
    sget v5, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    invoke-virtual {v3, v5}, Lcom/mdotm/android/model/MdotMAdResponse;->setAdType(I)V

    move-object v3, v0

    .line 74
    goto :goto_5

    .line 106
    :cond_4
    :try_start_1
    invoke-virtual {p2, v5}, Lcom/mdotm/android/model/MdotMAdResponse;->setResourceType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 366
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 370
    if-eqz v4, :cond_20

    .line 372
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto/16 :goto_4

    .line 130
    :cond_5
    :try_start_2
    new-instance v1, Ljava/io/File;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    sget-object v7, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    sget-object v7, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_PermanentCaching:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    .line 137
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 139
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 141
    goto/16 :goto_3

    .line 143
    :cond_7
    const-string v0, "cache is not enabled"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x1

    if-ne p3, v0, :cond_9

    .line 146
    new-instance v1, Ljava/io/File;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 149
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    sget-object v7, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    sget-object v7, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Interstitial_Temp:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_8

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 159
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 160
    goto/16 :goto_3

    .line 162
    :cond_9
    new-instance v1, Ljava/io/File;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 165
    sget-object v7, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    sget-object v7, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_Interstitial_Temp:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_a

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 171
    :cond_a
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_3

    .line 183
    :cond_b
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_4

    .line 187
    :cond_c
    if-eqz p5, :cond_d

    .line 190
    const-string v0, "cache does not exist"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-static {p4}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v6}, Lcom/mdotm/android/database/MdotMCacheHandler;->deleteFileFromCacheTable(Ljava/lang/String;)V

    .line 195
    :cond_d
    if-eqz p5, :cond_15

    .line 196
    new-instance v0, Lcom/mdotm/android/http/MdotMFileDownloader;

    invoke-direct {v0}, Lcom/mdotm/android/http/MdotMFileDownloader;-><init>()V

    invoke-virtual {v0, p4, v2}, Lcom/mdotm/android/http/MdotMFileDownloader;->downloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 198
    if-nez v0, :cond_f

    .line 199
    const-string v0, "unable to download file"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    if-eqz v4, :cond_e

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "unable to download vast file"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mdotm/android/vast/VastAd;->getError()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto/16 :goto_4

    .line 214
    :cond_e
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_4

    .line 220
    :cond_f
    const/4 v2, 0x2

    if-ne p3, v2, :cond_11

    .line 221
    invoke-virtual {p2}, Lcom/mdotm/android/model/MdotMAdResponse;->getResourceType()I

    move-result v2

    sget v5, Lcom/mdotm/android/http/MdotMNetworkManager;->videoResource:I

    if-ne v2, v5, :cond_11

    .line 222
    if-eqz v4, :cond_10

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    .line 225
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V

    goto/16 :goto_4

    .line 242
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_4

    .line 249
    :cond_11
    const-string v2, "inserting file neme to ad cache1"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 251
    new-instance v2, Lcom/mdotm/android/http/MdotMFileDownloader;

    invoke-direct {v2}, Lcom/mdotm/android/http/MdotMFileDownloader;-><init>()V

    .line 252
    invoke-virtual {v2, v0, v1}, Lcom/mdotm/android/http/MdotMFileDownloader;->writeStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    .line 253
    if-eqz v0, :cond_13

    .line 254
    if-eqz v4, :cond_12

    if-eqz v3, :cond_12

    .line 258
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/AdResource;->setUrl(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V

    .line 266
    :goto_7
    const-string v0, "inserting file neme to ad cache"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    invoke-static {p4}, Lcom/mdotm/android/database/MdotMCacheHandler;->getInstance(Landroid/content/Context;)Lcom/mdotm/android/database/MdotMCacheHandler;

    move-result-object v0

    .line 271
    const-string v1, "AdCache"

    .line 269
    invoke-virtual {v0, v6, v1}, Lcom/mdotm/android/database/MdotMCacheHandler;->insertCache(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 263
    :cond_12
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto :goto_7

    .line 273
    :cond_13
    if-eqz v4, :cond_14

    if-eqz v3, :cond_14

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    .line 276
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto/16 :goto_4

    .line 279
    :cond_14
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_4

    .line 290
    :cond_15
    if-eqz v4, :cond_17

    const/4 v0, 0x2

    if-ne p3, v0, :cond_16

    const/4 v0, 0x1

    .line 292
    :goto_8
    if-nez v0, :cond_1e

    .line 293
    new-instance v0, Lcom/mdotm/android/http/MdotMFileDownloader;

    invoke-direct {v0}, Lcom/mdotm/android/http/MdotMFileDownloader;-><init>()V

    invoke-virtual {v0, p4, v2}, Lcom/mdotm/android/http/MdotMFileDownloader;->downloadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 297
    if-nez v0, :cond_1a

    .line 299
    if-eqz v4, :cond_19

    .line 301
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V

    .line 302
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto/16 :goto_4

    .line 290
    :cond_16
    const/4 v0, 0x0

    goto :goto_8

    .line 291
    :cond_17
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->videoResource:I

    if-ne v5, v0, :cond_18

    const/4 v0, 0x2

    if-ne p3, v0, :cond_18

    .line 290
    const/4 v0, 0x1

    goto :goto_8

    :cond_18
    const/4 v0, 0x0

    goto :goto_8

    .line 305
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_4

    .line 313
    :cond_1a
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 314
    new-instance v2, Lcom/mdotm/android/http/MdotMFileDownloader;

    invoke-direct {v2}, Lcom/mdotm/android/http/MdotMFileDownloader;-><init>()V

    .line 315
    invoke-virtual {v2, v0, v1}, Lcom/mdotm/android/http/MdotMFileDownloader;->writeStreamToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    move-result v0

    .line 317
    if-eqz v0, :cond_1c

    .line 318
    if-eqz v4, :cond_1b

    .line 322
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/AdResource;->setUrl(Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V

    goto/16 :goto_4

    .line 326
    :cond_1b
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 327
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_4

    .line 330
    :cond_1c
    if-eqz v4, :cond_1d

    .line 331
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/mdotm/android/vast/AdResource;->setCachedLocally(Z)V

    .line 332
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto/16 :goto_4

    .line 335
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 337
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_4

    .line 345
    :cond_1e
    if-eqz v4, :cond_1f

    .line 347
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto/16 :goto_4

    .line 350
    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    .line 374
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setCachedLocally(Z)V

    goto/16 :goto_4

    .line 382
    :cond_21
    if-eqz v4, :cond_22

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mdotm/android/vast/VastAd;->setStatus(I)V

    goto/16 :goto_4

    .line 385
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    goto/16 :goto_4

    :cond_23
    move-object v0, v1

    goto/16 :goto_6

    :cond_24
    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_1

    :cond_25
    move v4, v0

    goto/16 :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
