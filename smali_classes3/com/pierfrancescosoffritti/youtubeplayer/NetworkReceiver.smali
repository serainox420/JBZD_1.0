.class public Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver$a;
    }
.end annotation


# instance fields
.field private a:Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver$a;


# direct methods
.method public constructor <init>(Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver$a;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver;->a:Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver$a;

    .line 19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 23
    invoke-static {p1}, Lcom/pierfrancescosoffritti/youtubeplayer/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver;->a:Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver$a;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver$a;->a()V

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver;->a:Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver$a;

    invoke-interface {v0}, Lcom/pierfrancescosoffritti/youtubeplayer/NetworkReceiver$a;->b()V

    goto :goto_0
.end method
