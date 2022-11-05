.class final Lcom/revmob/client/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/revmob/client/g;


# direct methods
.method constructor <init>(Lcom/revmob/client/g;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/client/h;->a:Lcom/revmob/client/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/revmob/client/h;->a:Lcom/revmob/client/g;

    new-instance v1, Lcom/revmob/internal/m;

    iget-object v2, p0, Lcom/revmob/client/h;->a:Lcom/revmob/client/g;

    invoke-static {v2}, Lcom/revmob/client/g;->a(Lcom/revmob/client/g;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/revmob/client/h;->a:Lcom/revmob/client/g;

    invoke-static {v3}, Lcom/revmob/client/g;->b(Lcom/revmob/client/g;)Lcom/revmob/RevMobAdsListener;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/revmob/internal/m;-><init>(Landroid/app/Activity;Lcom/revmob/RevMobAdsListener;)V

    invoke-static {v0, v1}, Lcom/revmob/client/g;->a(Lcom/revmob/client/g;Lcom/revmob/internal/m;)Lcom/revmob/internal/m;

    iget-object v0, p0, Lcom/revmob/client/h;->a:Lcom/revmob/client/g;

    invoke-static {v0}, Lcom/revmob/client/g;->c(Lcom/revmob/client/g;)Lcom/revmob/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/revmob/internal/m;->b()V

    return-void
.end method
