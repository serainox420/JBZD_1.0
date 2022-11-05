.class final Lcom/revmob/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/revmob/FullscreenActivity;


# direct methods
.method constructor <init>(Lcom/revmob/FullscreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/b;->a:Lcom/revmob/FullscreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/revmob/b;->a:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->a()V

    return-void
.end method
