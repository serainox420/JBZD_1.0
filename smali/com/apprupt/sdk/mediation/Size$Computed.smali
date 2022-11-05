.class public Lcom/apprupt/sdk/mediation/Size$Computed;
.super Ljava/lang/Object;
.source "Size.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/mediation/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Computed"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field final synthetic c:Lcom/apprupt/sdk/mediation/Size;


# direct methods
.method private constructor <init>(Lcom/apprupt/sdk/mediation/Size;II)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/apprupt/sdk/mediation/Size$Computed;->c:Lcom/apprupt/sdk/mediation/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p2, p0, Lcom/apprupt/sdk/mediation/Size$Computed;->a:I

    .line 20
    iput p3, p0, Lcom/apprupt/sdk/mediation/Size$Computed;->b:I

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Lcom/apprupt/sdk/mediation/Size;IILcom/apprupt/sdk/mediation/Size$1;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/apprupt/sdk/mediation/Size$Computed;-><init>(Lcom/apprupt/sdk/mediation/Size;II)V

    return-void
.end method
