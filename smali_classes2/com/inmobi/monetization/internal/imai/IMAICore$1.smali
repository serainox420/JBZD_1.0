.class final Lcom/inmobi/monetization/internal/imai/IMAICore$1;
.super Ljava/lang/Object;
.source "IMAICore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/monetization/internal/imai/IMAICore;->injectJavaScript(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/re/container/IMWebView;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/inmobi/re/container/IMWebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/inmobi/monetization/internal/imai/IMAICore$1;->a:Lcom/inmobi/re/container/IMWebView;

    iput-object p2, p0, Lcom/inmobi/monetization/internal/imai/IMAICore$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/inmobi/monetization/internal/imai/IMAICore$1;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/monetization/internal/imai/IMAICore$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 126
    return-void
.end method
