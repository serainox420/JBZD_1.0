.class public Lcom/google/android/gms/internal/zzbqv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqy;


# instance fields
.field private final zzcag:Lcom/google/android/gms/internal/zzbph;

.field private final zzchL:Lcom/google/android/gms/internal/zzbpc;

.field private final zzchM:Lcom/google/firebase/database/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/c;Lcom/google/android/gms/internal/zzbph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqv;->zzchL:Lcom/google/android/gms/internal/zzbpc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbqv;->zzcag:Lcom/google/android/gms/internal/zzbph;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqv;->zzchM:Lcom/google/firebase/database/c;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqv;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":CANCEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzWM()Lcom/google/android/gms/internal/zzbph;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqv;->zzcag:Lcom/google/android/gms/internal/zzbph;

    return-object v0
.end method

.method public zzZT()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqv;->zzchL:Lcom/google/android/gms/internal/zzbpc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqv;->zzchM:Lcom/google/firebase/database/c;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbpc;->zza(Lcom/google/firebase/database/c;)V

    return-void
.end method
