.class Lcom/pierfrancescosoffritti/youtubeplayer/c$1;
.super Ljava/lang/Object;
.source "PlayerControlsWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pierfrancescosoffritti/youtubeplayer/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/pierfrancescosoffritti/youtubeplayer/c;


# direct methods
.method constructor <init>(Lcom/pierfrancescosoffritti/youtubeplayer/c;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c$1;->a:Lcom/pierfrancescosoffritti/youtubeplayer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/pierfrancescosoffritti/youtubeplayer/c$1;->a:Lcom/pierfrancescosoffritti/youtubeplayer/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pierfrancescosoffritti/youtubeplayer/c;->a(Lcom/pierfrancescosoffritti/youtubeplayer/c;F)V

    .line 190
    return-void
.end method
