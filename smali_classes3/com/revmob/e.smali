.class final Lcom/revmob/e;
.super Lcom/revmob/internal/s;


# instance fields
.field private synthetic a:Lcom/revmob/FullscreenActivity;


# direct methods
.method constructor <init>(Lcom/revmob/FullscreenActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/revmob/e;->a:Lcom/revmob/FullscreenActivity;

    invoke-direct {p0, v0, v0}, Lcom/revmob/internal/s;-><init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/t;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/revmob/e;->a:Lcom/revmob/FullscreenActivity;

    invoke-virtual {v0}, Lcom/revmob/FullscreenActivity;->e()V

    return-void
.end method
