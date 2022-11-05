.class Lcom/smaato/soma/bannerutilities/a$d;
.super Lcom/smaato/soma/bannerutilities/a$c;
.source "AbstractBannerPackage.java"

# interfaces
.implements Lcom/smaato/soma/bannerutilities/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/bannerutilities/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lcom/smaato/soma/bannerutilities/a;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/bannerutilities/a;)V
    .locals 1

    .prologue
    .line 812
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a$d;->b:Lcom/smaato/soma/bannerutilities/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/smaato/soma/bannerutilities/a$c;-><init>(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/bannerutilities/a$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/bannerutilities/a$1;)V
    .locals 0

    .prologue
    .line 812
    invoke-direct {p0, p1}, Lcom/smaato/soma/bannerutilities/a$d;-><init>(Lcom/smaato/soma/bannerutilities/a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/UnableToApplySDKSettings;
        }
    .end annotation

    .prologue
    .line 817
    :try_start_0
    invoke-super {p0, p1}, Lcom/smaato/soma/bannerutilities/a$c;->a(Landroid/webkit/WebSettings;)V

    .line 818
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 824
    return-void

    .line 819
    :catch_0
    move-exception v0

    .line 820
    throw v0

    .line 821
    :catch_1
    move-exception v0

    .line 822
    new-instance v1, Lcom/smaato/soma/exception/UnableToApplySDKSettings;

    invoke-direct {v1, v0}, Lcom/smaato/soma/exception/UnableToApplySDKSettings;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
