.class final Lcom/revmob/internal/g;
.super Lcom/revmob/internal/s;


# instance fields
.field private synthetic a:Lcom/revmob/internal/f;


# direct methods
.method constructor <init>(Lcom/revmob/internal/f;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/revmob/internal/g;->a:Lcom/revmob/internal/f;

    invoke-direct {p0, v0, v0}, Lcom/revmob/internal/s;-><init>(Lcom/revmob/RevMobAdsListener;Lcom/revmob/internal/t;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/revmob/internal/g;->a:Lcom/revmob/internal/f;

    iget-object v0, v0, Lcom/revmob/internal/f;->a:Lcom/revmob/internal/d;

    invoke-virtual {v0, p2}, Lcom/revmob/internal/d;->a(Ljava/lang/String;)V

    return-void
.end method
