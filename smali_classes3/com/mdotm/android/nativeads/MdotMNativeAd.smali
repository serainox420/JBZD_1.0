.class public Lcom/mdotm/android/nativeads/MdotMNativeAd;
.super Lcom/mdotm/android/vast/BaseVastAd;
.source "MdotMNativeAd.java"


# instance fields
.field private body:Ljava/lang/String;

.field private callToAction:Ljava/lang/String;

.field private coverImage:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private nativeClickThrough:Ljava/lang/String;

.field private nativeClickTrackingURL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected nativeImpressionTrackingURL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mdotm/android/vast/BaseVastAd;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->nativeClickTrackingURL:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->nativeImpressionTrackingURL:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/nativeads/MdotMNativeAd;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->nativeClickTrackingURL:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mdotm/android/nativeads/MdotMNativeAd;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->nativeClickThrough:Ljava/lang/String;

    return-object v0
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    const-string v0, "\\"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 187
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, ":"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 189
    const-string v1, "?"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 191
    return-object v0
.end method


# virtual methods
.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 147
    const-string v0, "Native"

    .line 148
    invoke-direct {p0, p1}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    const-string v2, "Inside Native ad Display"

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v2, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;

    invoke-direct {v2}, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;-><init>()V

    .line 167
    new-instance v2, Ljava/io/File;

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 169
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 170
    sget-object v4, Lcom/mdotm/android/http/MdotMNetworkManager;->MdotM_CACHE_FOLDER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 171
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 172
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 178
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "localFile"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->callToAction:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->coverImage:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->title:Ljava/lang/String;

    return-object v0
.end method

.method public regesterView(Landroid/widget/LinearLayout;Lcom/mdotm/android/nativeads/MdotMNativeAd;Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 103
    move-object v0, p3

    check-cast v0, Lcom/mdotm/android/listener/MdotMAdEventListener;

    .line 105
    iget-object v1, p2, Lcom/mdotm/android/nativeads/MdotMNativeAd;->nativeImpressionTrackingURL:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 106
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p2, Lcom/mdotm/android/nativeads/MdotMNativeAd;->nativeImpressionTrackingURL:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_1

    .line 108
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Native Ad Clicked"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/mdotm/android/nativeads/MdotMNativeAd;->nativeImpressionTrackingURL:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    new-instance v1, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/mdotm/android/nativeads/MdotMNativeAd$1;-><init>(Lcom/mdotm/android/nativeads/MdotMNativeAd;Lcom/mdotm/android/listener/MdotMAdEventListener;Lcom/mdotm/android/nativeads/MdotMNativeAd;Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    return-void

    .line 107
    :cond_1
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v3

    iget-object v1, p2, Lcom/mdotm/android/nativeads/MdotMNativeAd;->nativeImpressionTrackingURL:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/mdotm/android/utils/MdotMUtils;->reportImpression(Ljava/lang/String;Landroid/content/Context;)V

    .line 106
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->body:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setCallToAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->callToAction:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setCoverImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->coverImage:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->icon:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setNativeClickThrough(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->nativeClickThrough:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setNativeClickTrackingURL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->nativeClickTrackingURL:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public setNativeImpressionTrackingURL(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->nativeImpressionTrackingURL:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mdotm/android/nativeads/MdotMNativeAd;->title:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public unRegesterView(Landroid/widget/LinearLayout;)V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 141
    return-void
.end method
