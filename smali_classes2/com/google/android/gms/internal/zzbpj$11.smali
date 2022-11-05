.class Lcom/google/android/gms/internal/zzbpj$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbpj;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/zzbph;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzceO:Lcom/google/android/gms/internal/zzbpj$zza;

.field final synthetic zzceP:Lcom/google/firebase/database/c;

.field final synthetic zzceQ:Lcom/google/firebase/database/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbpj$zza;Lcom/google/firebase/database/c;Lcom/google/firebase/database/b;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbpj$11;->zzceO:Lcom/google/android/gms/internal/zzbpj$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbpj$11;->zzceP:Lcom/google/firebase/database/c;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbpj$11;->zzceQ:Lcom/google/firebase/database/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpj$11;->zzceO:Lcom/google/android/gms/internal/zzbpj$zza;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbpj$zza;->zzi(Lcom/google/android/gms/internal/zzbpj$zza;)Lcom/google/firebase/database/m$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbpj$11;->zzceP:Lcom/google/firebase/database/c;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbpj$11;->zzceQ:Lcom/google/firebase/database/b;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/firebase/database/m$a;->a(Lcom/google/firebase/database/c;ZLcom/google/firebase/database/b;)V

    return-void
.end method
