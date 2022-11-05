.class Lcom/smaato/soma/bannerutilities/a$a;
.super Ljava/lang/Object;
.source "AbstractBannerPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/bannerutilities/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/bannerutilities/a;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/bannerutilities/a;)V
    .locals 0

    .prologue
    .line 917
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a$a;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/bannerutilities/a$1;)V
    .locals 0

    .prologue
    .line 917
    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/a$a;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    return-void
.end method


# virtual methods
.method public processJSON(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 947
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$a$1;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/bannerutilities/a$a$1;-><init>(Lcom/smaato/soma/bannerutilities/a$a;Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a$a$1;->c()Ljava/lang/Object;

    .line 1015
    return-void
.end method
