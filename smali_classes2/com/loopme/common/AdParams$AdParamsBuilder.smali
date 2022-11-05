.class Lcom/loopme/common/AdParams$AdParamsBuilder;
.super Ljava/lang/Object;
.source "AdParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loopme/common/AdParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AdParamsBuilder"
.end annotation


# instance fields
.field private mBuilderExpiredDate:I

.field private final mBuilderFormat:Ljava/lang/String;

.field private mBuilderHtml:Ljava/lang/String;

.field private mBuilderOrientation:Ljava/lang/String;

.field private mPackageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPartPreload:Z

.field private mToken:Ljava/lang/String;

.field private mVideo360:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mPackageIds:Ljava/util/List;

    .line 96
    iput-object p1, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mBuilderFormat:Ljava/lang/String;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/loopme/common/AdParams$AdParamsBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mBuilderFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/loopme/common/AdParams$AdParamsBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mBuilderHtml:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/loopme/common/AdParams$AdParamsBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mBuilderOrientation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/loopme/common/AdParams$AdParamsBuilder;)I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mBuilderExpiredDate:I

    return v0
.end method

.method static synthetic access$400(Lcom/loopme/common/AdParams$AdParamsBuilder;)Ljava/util/List;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mPackageIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/loopme/common/AdParams$AdParamsBuilder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/loopme/common/AdParams$AdParamsBuilder;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mPartPreload:Z

    return v0
.end method

.method static synthetic access$700(Lcom/loopme/common/AdParams$AdParamsBuilder;)Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mVideo360:Z

    return v0
.end method

.method private isValidFormatValue()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mBuilderFormat:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mBuilderFormat:Ljava/lang/String;

    const-string v2, "banner"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mBuilderFormat:Ljava/lang/String;

    const-string v2, "interstitial"

    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidOrientationValue(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 163
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "portrait"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "landscape"

    .line 167
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/loopme/common/AdParams;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Lcom/loopme/common/AdParams$AdParamsBuilder;->isValidFormatValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Lcom/loopme/common/AdParams;

    invoke-direct {v0, p0, v1}, Lcom/loopme/common/AdParams;-><init>(Lcom/loopme/common/AdParams$AdParamsBuilder;Lcom/loopme/common/AdParams$1;)V

    .line 149
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-static {}, Lcom/loopme/common/AdParams;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Wrong ad format value"

    invoke-static {v0, v2}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 149
    goto :goto_0
.end method

.method public expiredTime(I)Lcom/loopme/common/AdParams$AdParamsBuilder;
    .locals 2

    .prologue
    .line 138
    mul-int/lit16 v0, p1, 0x3e8

    .line 139
    const v1, 0x927c0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mBuilderExpiredDate:I

    .line 141
    return-object p0
.end method

.method public html(Ljava/lang/String;)Lcom/loopme/common/AdParams$AdParamsBuilder;
    .locals 2

    .prologue
    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "Broken response [empty html]"

    const-string v1, "server"

    invoke-static {v0, v1}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mBuilderHtml:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public orientation(Ljava/lang/String;)Lcom/loopme/common/AdParams$AdParamsBuilder;
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/loopme/common/AdParams$AdParamsBuilder;->isValidOrientationValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iput-object p1, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mBuilderOrientation:Ljava/lang/String;

    .line 134
    :cond_0
    :goto_0
    return-object p0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mBuilderFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mBuilderFormat:Ljava/lang/String;

    const-string v1, "interstitial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Broken response [invalid orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "server"

    invoke-static {v0, v1}, Lcom/loopme/debugging/ErrorLog;->post(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public packageIds(Ljava/util/List;)Lcom/loopme/common/AdParams$AdParamsBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/loopme/common/AdParams$AdParamsBuilder;"
        }
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mPackageIds:Ljava/util/List;

    .line 101
    return-object p0
.end method

.method public partPreload(Z)Lcom/loopme/common/AdParams$AdParamsBuilder;
    .locals 0

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mPartPreload:Z

    .line 106
    return-object p0
.end method

.method public token(Ljava/lang/String;)Lcom/loopme/common/AdParams$AdParamsBuilder;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mToken:Ljava/lang/String;

    .line 116
    return-object p0
.end method

.method public video360(Z)Lcom/loopme/common/AdParams$AdParamsBuilder;
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/loopme/common/AdParams$AdParamsBuilder;->mVideo360:Z

    .line 111
    return-object p0
.end method
