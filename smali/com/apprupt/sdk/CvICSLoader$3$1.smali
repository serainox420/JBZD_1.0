.class Lcom/apprupt/sdk/CvICSLoader$3$1;
.super Ljava/lang/Object;
.source "CvICSLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvICSLoader$3;->a(Lcom/apprupt/sdk/URLRequest$URLResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvICSLoader$3;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvICSLoader$3;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/apprupt/sdk/CvICSLoader$3$1;->a:Lcom/apprupt/sdk/CvICSLoader$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/apprupt/sdk/CvICSLoader$3$1;->a:Lcom/apprupt/sdk/CvICSLoader$3;

    iget-object v0, v0, Lcom/apprupt/sdk/CvICSLoader$3;->a:Lcom/apprupt/sdk/CvICSLoader;

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvICSLoader;->a()V

    .line 166
    return-void
.end method
