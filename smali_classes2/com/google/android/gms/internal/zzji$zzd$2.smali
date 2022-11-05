.class Lcom/google/android/gms/internal/zzji$zzd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzqp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzji$zzd;->zzgP()Lcom/google/android/gms/internal/zzji$zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzKg:Lcom/google/android/gms/internal/zzji$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzji$zzd;Lcom/google/android/gms/internal/zzji$zzc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzji$zzd$2;->zzKg:Lcom/google/android/gms/internal/zzji$zzc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "Rejecting reference for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpk;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zzd$2;->zzKg:Lcom/google/android/gms/internal/zzji$zzc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzji$zzc;->reject()V

    return-void
.end method
