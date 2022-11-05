.class public Lcom/google/android/gms/internal/zzct$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzda;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private zzwC:Lcom/google/android/gms/internal/zzha;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzha;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzct$zzb;->zzwC:Lcom/google/android/gms/internal/zzha;

    return-void
.end method


# virtual methods
.method public zzdS()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzct$zzb;->zzwC:Lcom/google/android/gms/internal/zzha;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzct$zzb;->zzwC:Lcom/google/android/gms/internal/zzha;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzha;->zzgc()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzdT()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzct$zzb;->zzwC:Lcom/google/android/gms/internal/zzha;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzdU()Lcom/google/android/gms/internal/zzda;
    .locals 0

    return-object p0
.end method
