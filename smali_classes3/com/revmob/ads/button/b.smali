.class final Lcom/revmob/ads/button/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/revmob/ads/button/a;


# direct methods
.method constructor <init>(Lcom/revmob/ads/button/a;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/button/b;->a:Lcom/revmob/ads/button/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/button/b;->a:Lcom/revmob/ads/button/a;

    iget-object v0, v0, Lcom/revmob/ads/button/a;->a:Lcom/revmob/ads/button/RevMobButton;

    invoke-static {v0}, Lcom/revmob/ads/button/RevMobButton;->access$100(Lcom/revmob/ads/button/RevMobButton;)V

    return-void
.end method
