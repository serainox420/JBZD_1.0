.class Lcom/google/android/gms/internal/zzbnt$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbnt;->zza(ZLcom/google/android/gms/internal/zzbow$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener",
        "<",
        "Lcom/google/firebase/auth/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzcav:Lcom/google/android/gms/internal/zzbow$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnt;Lcom/google/android/gms/internal/zzbow$zza;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnt$2;->zzcav:Lcom/google/android/gms/internal/zzbow$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/firebase/auth/e;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbnt$2;->zza(Lcom/google/firebase/auth/e;)V

    return-void
.end method

.method public zza(Lcom/google/firebase/auth/e;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnt$2;->zzcav:Lcom/google/android/gms/internal/zzbow$zza;

    invoke-virtual {p1}, Lcom/google/firebase/auth/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbow$zza;->zziL(Ljava/lang/String;)V

    return-void
.end method
