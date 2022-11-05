.class Lcom/smaato/soma/bannerutilities/a$b$1;
.super Lcom/smaato/soma/l;
.source "AbstractBannerPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/a$b;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/bannerutilities/a$b;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/a$b;)V
    .locals 0

    .prologue
    .line 849
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a$b$1;->a:Lcom/smaato/soma/bannerutilities/a$b;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 852
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/a$b$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
