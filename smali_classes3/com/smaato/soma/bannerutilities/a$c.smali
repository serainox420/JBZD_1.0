.class Lcom/smaato/soma/bannerutilities/a$c;
.super Ljava/lang/Object;
.source "AbstractBannerPackage.java"

# interfaces
.implements Lcom/smaato/soma/bannerutilities/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/bannerutilities/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/bannerutilities/a;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/bannerutilities/a;)V
    .locals 0

    .prologue
    .line 797
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a$c;->a:Lcom/smaato/soma/bannerutilities/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/bannerutilities/a$1;)V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/a$c;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToApplySDKSettings;
        }
    .end annotation

    .prologue
    .line 805
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 806
    return-void
.end method
