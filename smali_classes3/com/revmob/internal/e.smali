.class final Lcom/revmob/internal/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/revmob/internal/d;


# direct methods
.method constructor <init>(Lcom/revmob/internal/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/internal/e;->b:Lcom/revmob/internal/d;

    iput-object p2, p0, Lcom/revmob/internal/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/revmob/internal/e;->b:Lcom/revmob/internal/d;

    invoke-static {v1}, Lcom/revmob/internal/d;->a(Lcom/revmob/internal/d;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/revmob/FullscreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "marketURL"

    iget-object v2, p0, Lcom/revmob/internal/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/revmob/internal/e;->b:Lcom/revmob/internal/d;

    invoke-static {v1}, Lcom/revmob/internal/d;->a(Lcom/revmob/internal/d;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
