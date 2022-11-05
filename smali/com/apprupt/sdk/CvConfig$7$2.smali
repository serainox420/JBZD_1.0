.class Lcom/apprupt/sdk/CvConfig$7$2;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$SuccessHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvConfig$7;->a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/Q$Resolver;

.field final synthetic b:Lcom/apprupt/sdk/CvConfig$7;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvConfig$7;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$7$2;->b:Lcom/apprupt/sdk/CvConfig$7;

    iput-object p2, p0, Lcom/apprupt/sdk/CvConfig$7$2;->a:Lcom/apprupt/sdk/Q$Resolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$7$2;->a:Lcom/apprupt/sdk/Q$Resolver;

    invoke-interface {v0, p1}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    .line 190
    return-void
.end method
