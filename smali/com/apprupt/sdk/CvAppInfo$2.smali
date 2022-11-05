.class Lcom/apprupt/sdk/CvAppInfo$2;
.super Ljava/lang/Object;
.source "CvAppInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvAppInfo;->f(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/apprupt/sdk/CvAppInfo;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvAppInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/apprupt/sdk/CvAppInfo$2;->b:Lcom/apprupt/sdk/CvAppInfo;

    iput-object p2, p0, Lcom/apprupt/sdk/CvAppInfo$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppInfo$2;->b:Lcom/apprupt/sdk/CvAppInfo;

    iget-object v1, p0, Lcom/apprupt/sdk/CvAppInfo$2;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvAppInfo;->a(Lcom/apprupt/sdk/CvAppInfo;Landroid/content/Context;)V

    .line 510
    return-void
.end method
