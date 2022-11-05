.class Lcom/smaato/soma/bannerutilities/a$b;
.super Landroid/webkit/WebViewClient;
.source "AbstractBannerPackage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/bannerutilities/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/smaato/soma/internal/statemachine/LoadingState;

.field final synthetic b:Lcom/smaato/soma/bannerutilities/a;


# direct methods
.method private constructor <init>(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/internal/statemachine/LoadingState;)V
    .locals 0

    .prologue
    .line 842
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/a$b;->b:Lcom/smaato/soma/bannerutilities/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 843
    iput-object p2, p0, Lcom/smaato/soma/bannerutilities/a$b;->a:Lcom/smaato/soma/internal/statemachine/LoadingState;

    .line 844
    return-void
.end method

.method synthetic constructor <init>(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/internal/statemachine/LoadingState;Lcom/smaato/soma/bannerutilities/a$1;)V
    .locals 0

    .prologue
    .line 832
    invoke-direct {p0, p1, p2}, Lcom/smaato/soma/bannerutilities/a$b;-><init>(Lcom/smaato/soma/bannerutilities/a;Lcom/smaato/soma/internal/statemachine/LoadingState;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 880
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$b$2;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/bannerutilities/a$b$2;-><init>(Lcom/smaato/soma/bannerutilities/a$b;Landroid/webkit/WebView;)V

    .line 914
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a$b$2;->c()Ljava/lang/Object;

    .line 915
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 867
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/a$b;->b:Lcom/smaato/soma/bannerutilities/a;

    iput-boolean v4, v0, Lcom/smaato/soma/bannerutilities/a;->a:Z

    .line 869
    new-instance v0, Lcom/smaato/soma/debug/b;

    const-string v1, "Banner_Package"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Page FAILED TO LOAD in AbstractBannerPackage... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/bannerutilities/a$b;->a:Lcom/smaato/soma/internal/statemachine/LoadingState;

    .line 870
    invoke-virtual {v3}, Lcom/smaato/soma/internal/statemachine/LoadingState;->a()Lcom/smaato/soma/internal/statemachine/LoadingState$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/smaato/soma/debug/DebugCategory;->DEBUG:Lcom/smaato/soma/debug/DebugCategory;

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/smaato/soma/debug/b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/smaato/soma/debug/DebugCategory;)V

    .line 869
    invoke-static {v0}, Lcom/smaato/soma/debug/a;->a(Lcom/smaato/soma/debug/b;)V

    .line 875
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 849
    new-instance v0, Lcom/smaato/soma/bannerutilities/a$b$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/bannerutilities/a$b$1;-><init>(Lcom/smaato/soma/bannerutilities/a$b;)V

    .line 854
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/a$b$1;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 849
    return v0
.end method
