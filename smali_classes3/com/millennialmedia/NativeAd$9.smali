.class Lcom/millennialmedia/NativeAd$9;
.super Ljava/lang/Object;
.source "NativeAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/NativeAd;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/NativeAd$NativeListener;

.field final synthetic b:Lcom/millennialmedia/NativeAd;


# direct methods
.method constructor <init>(Lcom/millennialmedia/NativeAd;Lcom/millennialmedia/NativeAd$NativeListener;)V
    .locals 0

    .prologue
    .line 1952
    iput-object p1, p0, Lcom/millennialmedia/NativeAd$9;->b:Lcom/millennialmedia/NativeAd;

    iput-object p2, p0, Lcom/millennialmedia/NativeAd$9;->a:Lcom/millennialmedia/NativeAd$NativeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/millennialmedia/NativeAd$9;->a:Lcom/millennialmedia/NativeAd$NativeListener;

    iget-object v1, p0, Lcom/millennialmedia/NativeAd$9;->b:Lcom/millennialmedia/NativeAd;

    invoke-interface {v0, v1}, Lcom/millennialmedia/NativeAd$NativeListener;->onAdLeftApplication(Lcom/millennialmedia/NativeAd;)V

    .line 1957
    return-void
.end method
