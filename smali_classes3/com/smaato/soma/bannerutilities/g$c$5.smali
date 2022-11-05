.class Lcom/smaato/soma/bannerutilities/g$c$5;
.super Ljava/lang/Object;
.source "VideoChrome.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/bannerutilities/g$c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/bannerutilities/g$c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/bannerutilities/g$c;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/smaato/soma/bannerutilities/g$c$5;->a:Lcom/smaato/soma/bannerutilities/g$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 204
    new-instance v0, Lcom/smaato/soma/bannerutilities/g$c$5$1;

    invoke-direct {v0, p0, p1}, Lcom/smaato/soma/bannerutilities/g$c$5$1;-><init>(Lcom/smaato/soma/bannerutilities/g$c$5;Landroid/media/MediaPlayer;)V

    .line 210
    invoke-virtual {v0}, Lcom/smaato/soma/bannerutilities/g$c$5$1;->c()Ljava/lang/Object;

    .line 211
    return-void
.end method
