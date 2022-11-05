.class interface abstract Lcom/moat/analytics/mobile/aol/WebViewHound;
.super Ljava/lang/Object;
.source "WebViewHound.java"


# virtual methods
.method public abstract sniff(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/aol/base/functional/Optional;
    .annotation build Lcom/moat/analytics/mobile/aol/base/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/moat/analytics/mobile/aol/base/functional/Optional",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/aol/base/exception/MoatException;
        }
    .end annotation
.end method
