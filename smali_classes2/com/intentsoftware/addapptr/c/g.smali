.class public Lcom/intentsoftware/addapptr/c/g;
.super Ljava/lang/Object;
.source "RevMobHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intentsoftware/addapptr/c/g$a;
    }
.end annotation


# static fields
.field private static initialized:Z

.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/intentsoftware/addapptr/c/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private static revMob:Lcom/revmob/RevMob;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/intentsoftware/addapptr/c/g;->listeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 13
    sput-boolean p0, Lcom/intentsoftware/addapptr/c/g;->initialized:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/intentsoftware/addapptr/c/g;->listeners:Ljava/util/List;

    return-object v0
.end method

.method public static addListener(Lcom/intentsoftware/addapptr/c/g$a;)V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/intentsoftware/addapptr/c/g;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public static getRevMob()Lcom/revmob/RevMob;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/intentsoftware/addapptr/c/g;->revMob:Lcom/revmob/RevMob;

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/intentsoftware/addapptr/c/g;->revMob:Lcom/revmob/RevMob;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/intentsoftware/addapptr/c/g$1;

    invoke-direct {v0}, Lcom/intentsoftware/addapptr/c/g$1;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/revmob/RevMob;->startWithListener(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;Ljava/lang/String;)Lcom/revmob/RevMob;

    move-result-object v0

    sput-object v0, Lcom/intentsoftware/addapptr/c/g;->revMob:Lcom/revmob/RevMob;

    .line 46
    :cond_0
    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/intentsoftware/addapptr/c/g;->revMob:Lcom/revmob/RevMob;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/intentsoftware/addapptr/c/g;->initialized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removeListener(Lcom/intentsoftware/addapptr/c/g$a;)V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/intentsoftware/addapptr/c/g;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
