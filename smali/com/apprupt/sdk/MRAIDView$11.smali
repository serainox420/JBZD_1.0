.class Lcom/apprupt/sdk/MRAIDView$11;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Lcom/apprupt/sdk/CvAppsList$SingleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->b(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 549
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$11;->b:Lcom/apprupt/sdk/MRAIDView;

    iput-object p2, p0, Lcom/apprupt/sdk/MRAIDView$11;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/CvAppsList$State;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 552
    iget-object v2, p0, Lcom/apprupt/sdk/MRAIDView$11;->b:Lcom/apprupt/sdk/MRAIDView;

    iget-object v3, p0, Lcom/apprupt/sdk/MRAIDView$11;->a:Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Object;

    sget-object v5, Lcom/apprupt/sdk/CvAppsList$State;->c:Lcom/apprupt/sdk/CvAppsList$State;

    if-ne p1, v5, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/apprupt/sdk/MRAIDView;->b(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    return-void

    .line 552
    :cond_0
    sget-object v5, Lcom/apprupt/sdk/CvAppsList$State;->a:Lcom/apprupt/sdk/CvAppsList$State;

    if-ne p1, v5, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
