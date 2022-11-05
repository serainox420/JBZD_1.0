.class final Lcom/revmob/internal/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private synthetic a:Lcom/revmob/internal/p;


# direct methods
.method constructor <init>(Lcom/revmob/internal/p;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/internal/q;->a:Lcom/revmob/internal/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object v0, p0, Lcom/revmob/internal/q;->a:Lcom/revmob/internal/p;

    invoke-static {v0}, Lcom/revmob/internal/p;->a(Lcom/revmob/internal/p;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method
