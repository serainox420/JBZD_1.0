.class Lcom/smaato/soma/measurements/a$1$3;
.super Ljava/lang/Object;
.source "BannerMeasurements.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/measurements/a$1;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/smaato/soma/measurements/a$1;


# direct methods
.method constructor <init>(Lcom/smaato/soma/measurements/a$1;Z)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/smaato/soma/measurements/a$1$3;->b:Lcom/smaato/soma/measurements/a$1;

    iput-boolean p2, p0, Lcom/smaato/soma/measurements/a$1$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/smaato/soma/measurements/a$1$3$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/measurements/a$1$3$1;-><init>(Lcom/smaato/soma/measurements/a$1$3;)V

    .line 224
    invoke-virtual {v0}, Lcom/smaato/soma/measurements/a$1$3$1;->c()Ljava/lang/Object;

    .line 225
    return-void
.end method
