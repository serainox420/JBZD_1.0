.class public Lcom/loopme/common/AdParams;
.super Ljava/lang/Object;
.source "AdParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopme/common/AdParams$AdParamsBuilder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mExpiredDate:I

.field private final mFormat:Ljava/lang/String;

.field private final mHtml:Ljava/lang/String;

.field private final mOrientation:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/loopme/common/AdParams;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loopme/common/AdParams;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/loopme/common/AdParams$AdParamsBuilder;)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/loopme/common/AdParams;->mPackageIds:Ljava/util/List;

    .line 30
    invoke-static {p1}, Lcom/loopme/common/AdParams$AdParamsBuilder;->access$000(Lcom/loopme/common/AdParams$AdParamsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/common/AdParams;->mFormat:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/loopme/common/AdParams$AdParamsBuilder;->access$100(Lcom/loopme/common/AdParams$AdParamsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/common/AdParams;->mHtml:Ljava/lang/String;

    .line 32
    invoke-static {p1}, Lcom/loopme/common/AdParams$AdParamsBuilder;->access$200(Lcom/loopme/common/AdParams$AdParamsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/common/AdParams;->mOrientation:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/loopme/common/AdParams$AdParamsBuilder;->access$300(Lcom/loopme/common/AdParams$AdParamsBuilder;)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x927c0

    .line 36
    :goto_0
    iput v0, p0, Lcom/loopme/common/AdParams;->mExpiredDate:I

    .line 38
    invoke-static {p1}, Lcom/loopme/common/AdParams$AdParamsBuilder;->access$400(Lcom/loopme/common/AdParams$AdParamsBuilder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/common/AdParams;->mPackageIds:Ljava/util/List;

    .line 39
    invoke-static {p1}, Lcom/loopme/common/AdParams$AdParamsBuilder;->access$500(Lcom/loopme/common/AdParams$AdParamsBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loopme/common/AdParams;->mToken:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/loopme/common/AdParams$AdParamsBuilder;->access$600(Lcom/loopme/common/AdParams$AdParamsBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loopme/common/AdParams;->mPartPreload:Z

    .line 42
    invoke-static {p1}, Lcom/loopme/common/AdParams$AdParamsBuilder;->access$700(Lcom/loopme/common/AdParams$AdParamsBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/loopme/common/AdParams;->mVideo360:Z

    .line 44
    sget-object v0, Lcom/loopme/common/AdParams;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server response indicates  ad params: format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loopme/common/AdParams;->mFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/loopme/common/AdParams;->mOrientation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expire in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/loopme/common/AdParams;->mExpiredDate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loopme/common/Logging;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 36
    :cond_0
    invoke-static {p1}, Lcom/loopme/common/AdParams$AdParamsBuilder;->access$300(Lcom/loopme/common/AdParams$AdParamsBuilder;)I

    move-result v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/loopme/common/AdParams$AdParamsBuilder;Lcom/loopme/common/AdParams$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/loopme/common/AdParams;-><init>(Lcom/loopme/common/AdParams$AdParamsBuilder;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/loopme/common/AdParams;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAdFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/loopme/common/AdParams;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getAdOrientation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/loopme/common/AdParams;->mOrientation:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredTime()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/loopme/common/AdParams;->mExpiredDate:I

    return v0
.end method

.method public getHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/loopme/common/AdParams;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/loopme/common/AdParams;->mPackageIds:Ljava/util/List;

    return-object v0
.end method

.method public getPartPreload()Z
    .locals 1

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/loopme/common/AdParams;->mPartPreload:Z

    return v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/loopme/common/AdParams;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method public isVideo360()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/loopme/common/AdParams;->mVideo360:Z

    return v0
.end method
