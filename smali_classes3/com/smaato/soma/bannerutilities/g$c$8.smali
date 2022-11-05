.class Lcom/smaato/soma/bannerutilities/g$c$8;
.super Lcom/smaato/soma/l;
.source "VideoChrome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/g$c;->onError(Landroid/media/MediaPlayer;II)Z
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
.field final synthetic a:Lcom/smaato/soma/bannerutilities/g$c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/g$c;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$c$8;->a:Lcom/smaato/soma/bannerutilities/g$c;

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
    .line 271
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c$8;->a:Lcom/smaato/soma/bannerutilities/g$c;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$c;->a()V

    .line 272
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
    .line 268
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/g$c$8;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
