.class public Lcom/apprupt/sdk/CvAdColony;
.super Ljava/lang/Object;
.source "CvAdColony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apprupt/sdk/CvAdColony$DummyWrapper;,
        Lcom/apprupt/sdk/CvAdColony$Wrapper;,
        Lcom/apprupt/sdk/CvAdColony$WrapperListener;
    }
.end annotation


# static fields
.field private static a:Lcom/apprupt/sdk/CvAdColony$Wrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/apprupt/sdk/CvAdColony$DummyWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apprupt/sdk/CvAdColony$DummyWrapper;-><init>(Lcom/apprupt/sdk/CvAdColony$1;)V

    sput-object v0, Lcom/apprupt/sdk/CvAdColony;->a:Lcom/apprupt/sdk/CvAdColony$Wrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()V
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/apprupt/sdk/CvAdColony;->a:Lcom/apprupt/sdk/CvAdColony$Wrapper;

    invoke-interface {v0}, Lcom/apprupt/sdk/CvAdColony$Wrapper;->a()V

    .line 95
    return-void
.end method

.method static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/apprupt/sdk/CvAdColony;->a:Lcom/apprupt/sdk/CvAdColony$Wrapper;

    invoke-interface {v0, p0}, Lcom/apprupt/sdk/CvAdColony$Wrapper;->a(Landroid/app/Activity;)V

    .line 99
    return-void
.end method

.method static b()Lcom/apprupt/sdk/CvAdColony$Wrapper;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/apprupt/sdk/CvAdColony;->a:Lcom/apprupt/sdk/CvAdColony$Wrapper;

    return-object v0
.end method
