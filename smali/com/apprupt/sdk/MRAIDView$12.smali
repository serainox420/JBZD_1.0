.class Lcom/apprupt/sdk/MRAIDView$12;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Lcom/apprupt/sdk/CvAppsList$AppInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/MRAIDView;->c(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 562
    iput-object p1, p0, Lcom/apprupt/sdk/MRAIDView$12;->b:Lcom/apprupt/sdk/MRAIDView;

    iput-object p2, p0, Lcom/apprupt/sdk/MRAIDView$12;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 565
    iget-object v0, p0, Lcom/apprupt/sdk/MRAIDView$12;->b:Lcom/apprupt/sdk/MRAIDView;

    iget-object v1, p0, Lcom/apprupt/sdk/MRAIDView$12;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/apprupt/sdk/MRAIDView;->b(Lcom/apprupt/sdk/MRAIDView;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    return-void
.end method
