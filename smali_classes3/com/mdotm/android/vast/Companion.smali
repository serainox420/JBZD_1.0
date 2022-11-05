.class public Lcom/mdotm/android/vast/Companion;
.super Lcom/mdotm/android/vast/BaseVastAd;
.source "Companion.java"


# static fields
.field public static htmlResource:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected closeBtnLocation:Ljava/lang/String;

.field public closeBtnSize:Ljava/lang/String;

.field protected companionCreativeViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected companionImageByteArray:[B

.field protected companionStaticImageClickThrough:Ljava/lang/String;

.field protected companionStaticImageClickTracking:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected height:Ljava/lang/String;

.field protected skipOffset:Ljava/lang/String;

.field protected staticResource:Ljava/lang/String;

.field protected vastHtmlClickTracking:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mdotm/android/vast/BaseVastAd;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/Companion;->vastHtmlClickTracking:Ljava/util/ArrayList;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/Companion;->companionStaticImageClickTracking:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/vast/Companion;->companionCreativeViewList:Ljava/util/ArrayList;

    .line 7
    return-void
.end method


# virtual methods
.method public getCloseLoc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mdotm/android/vast/Companion;->closeBtnLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getHTMLResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/mdotm/android/vast/Companion;->htmlResource:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mdotm/android/vast/Companion;->skipOffset:Ljava/lang/String;

    return-object v0
.end method

.method public vastHtmlClickTrack()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mdotm/android/vast/Companion;->vastHtmlClickTracking:Ljava/util/ArrayList;

    return-object v0
.end method
