.class Lcom/apprupt/sdk/CvMediation$9;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediation;->a(Landroid/content/Context;Lcom/apprupt/sdk/CvContentOptions;Lcom/apprupt/sdk/CvMediator$Completion;Lcom/apprupt/sdk/mediation/AdWrapper$Listener;Z[Ljava/lang/String;)Lcom/apprupt/sdk/CvMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvContentOptions;

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/apprupt/sdk/CvMediator;

.field final synthetic d:Lcom/apprupt/sdk/CvMediation;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation;Lcom/apprupt/sdk/CvContentOptions;[Ljava/lang/String;Lcom/apprupt/sdk/CvMediator;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$9;->d:Lcom/apprupt/sdk/CvMediation;

    iput-object p2, p0, Lcom/apprupt/sdk/CvMediation$9;->a:Lcom/apprupt/sdk/CvContentOptions;

    iput-object p3, p0, Lcom/apprupt/sdk/CvMediation$9;->b:[Ljava/lang/String;

    iput-object p4, p0, Lcom/apprupt/sdk/CvMediation$9;->c:Lcom/apprupt/sdk/CvMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 292
    new-instance v0, Lcom/apprupt/sdk/CvMediation$9$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvMediation$9$1;-><init>(Lcom/apprupt/sdk/CvMediation$9;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 311
    return-void
.end method
