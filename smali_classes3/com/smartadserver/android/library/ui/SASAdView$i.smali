.class public Lcom/smartadserver/android/library/ui/SASAdView$i;
.super Ljava/lang/Object;
.source "SASAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartadserver/android/library/ui/SASAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/smartadserver/android/library/ui/SASAdView;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;I)V
    .locals 0

    .prologue
    .line 3666
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/SASAdView$i;->a:Lcom/smartadserver/android/library/ui/SASAdView;

    .line 3667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3668
    iput p2, p0, Lcom/smartadserver/android/library/ui/SASAdView$i;->b:I

    .line 3669
    return-void
.end method

.method synthetic constructor <init>(Lcom/smartadserver/android/library/ui/SASAdView;ILcom/smartadserver/android/library/ui/SASAdView$1;)V
    .locals 0

    .prologue
    .line 3640
    invoke-direct {p0, p1, p2}, Lcom/smartadserver/android/library/ui/SASAdView$i;-><init>(Lcom/smartadserver/android/library/ui/SASAdView;I)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 3680
    iget v0, p0, Lcom/smartadserver/android/library/ui/SASAdView$i;->b:I

    return v0
.end method
