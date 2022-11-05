.class Lcom/smaato/soma/bannerutilities/g$a;
.super Landroid/webkit/WebChromeClient;
.source "VideoChrome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smaato/soma/bannerutilities/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/smaato/soma/bannerutilities/h;

.field final synthetic b:Lcom/smaato/soma/bannerutilities/g;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/g;)V
    .locals 1

    .prologue
    .line 294
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$a;->b:Lcom/smaato/soma/bannerutilities/g;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smaato/soma/bannerutilities/g$a;->a:Lcom/smaato/soma/bannerutilities/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/smaato/soma/exception/ClosingVideoChromeFailedException;
        }
    .end annotation

    .prologue
    .line 308
    return-void
.end method

.method public a(Lcom/smaato/soma/bannerutilities/h;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$a;->a:Lcom/smaato/soma/bannerutilities/h;

    .line 301
    return-void
.end method
