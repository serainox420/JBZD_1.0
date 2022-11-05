.class final Lcom/revmob/ads/banner/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/revmob/ads/banner/RevMobBanner;


# direct methods
.method constructor <init>(Lcom/revmob/ads/banner/RevMobBanner;)V
    .locals 0

    iput-object p1, p0, Lcom/revmob/ads/banner/h;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/revmob/ads/banner/h;->a:Lcom/revmob/ads/banner/RevMobBanner;

    invoke-static {v0}, Lcom/revmob/ads/banner/RevMobBanner;->access$1100(Lcom/revmob/ads/banner/RevMobBanner;)V

    return-void
.end method
