.class Lcom/apprupt/sdk/MRAIDView$9;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Lcom/apprupt/sdk/URLRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->loadUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/apprupt/sdk/MRAIDView;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$9;->b:Lcom/apprupt/sdk/MRAIDView;

    iput-object p2, p0, Lcom/apprupt/sdk/MRAIDView$9;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V
    .locals 2

    .prologue
    .line 492
    new-instance v0, Lcom/apprupt/sdk/MRAIDView$9$1;

    invoke-direct {v0, p0, p1}, Lcom/apprupt/sdk/MRAIDView$9$1;-><init>(Lcom/apprupt/sdk/MRAIDView$9;Lcom/apprupt/sdk/URLRequest$URLResponse;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 502
    return-void
.end method
