.class Lcom/apprupt/sdk/AFP2$1$1;
.super Ljava/lang/Object;
.source "AFP2.java"

# interfaces
.implements Lcom/apprupt/sdk/CvAppsList$MultiAppInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AFP2$1;->a(Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/apprupt/sdk/AFP2$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AFP2$1;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/apprupt/sdk/AFP2$1$1;->b:Lcom/apprupt/sdk/AFP2$1;

    iput-object p2, p0, Lcom/apprupt/sdk/AFP2$1$1;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/apprupt/sdk/AFP2$1$1;->b:Lcom/apprupt/sdk/AFP2$1;

    iget-object v0, v0, Lcom/apprupt/sdk/AFP2$1;->a:Lcom/apprupt/sdk/AFP2;

    iget-object v1, p0, Lcom/apprupt/sdk/AFP2$1$1;->a:Ljava/util/Set;

    invoke-static {v0, v1, p1}, Lcom/apprupt/sdk/AFP2;->a(Lcom/apprupt/sdk/AFP2;Ljava/util/Set;Ljava/util/Collection;)V

    .line 51
    return-void
.end method
