.class Lcom/smaato/soma/bannerutilities/g$c$9;
.super Lcom/smaato/soma/l;
.source "VideoChrome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/g$c;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/bannerutilities/g$c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/g$c;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$c$9;->a:Lcom/smaato/soma/bannerutilities/g$c;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/smaato/soma/bannerutilities/g$c$9;->a:Lcom/smaato/soma/bannerutilities/g$c;

    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$c;->a()V

    .line 285
    const/4 v0, 0x0

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
    .line 281
    invoke-virtual {p0}, Lcom/smaato/soma/bannerutilities/g$c$9;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
