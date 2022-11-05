.class public Lcom/google/android/gms/internal/zzbox;
.super Lcom/google/android/gms/internal/zzbpc;


# instance fields
.field private final zzbZZ:Lcom/google/android/gms/internal/zzbpj;

.field private final zzcdG:Lcom/google/firebase/database/a;

.field private final zzcdH:Lcom/google/android/gms/internal/zzbrc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/a;Lcom/google/android/gms/internal/zzbrc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbpc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbox;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbox;->zzcdG:Lcom/google/firebase/database/a;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbox;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbox;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzbox;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbox;->zzcdG:Lcom/google/firebase/database/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbox;->zzcdG:Lcom/google/firebase/database/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzbox;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbox;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbox;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbox;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbox;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbox;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbrc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbox;->zzcdG:Lcom/google/firebase/database/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbox;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbox;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrc;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ChildEventRegistration"

    return-object v0
.end method

.method public zzYn()Lcom/google/android/gms/internal/zzbrc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbox;->zzcdH:Lcom/google/android/gms/internal/zzbrc;

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbpc;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbox;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbox;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbox;->zzcdG:Lcom/google/firebase/database/a;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzbox;-><init>(Lcom/google/android/gms/internal/zzbpj;Lcom/google/firebase/database/a;Lcom/google/android/gms/internal/zzbrc;)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqw;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqx;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbox;->zzbZZ:Lcom/google/android/gms/internal/zzbpj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbrc;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqw;->zzZU()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbph;->zza(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbph;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/o;->a(Lcom/google/android/gms/internal/zzbpj;Lcom/google/android/gms/internal/zzbph;)Lcom/google/firebase/database/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqw;->zzZS()Lcom/google/android/gms/internal/zzbrx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/o;->a(Lcom/google/firebase/database/d;Lcom/google/android/gms/internal/zzbrx;)Lcom/google/firebase/database/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqw;->zzZW()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqw;->zzZW()Lcom/google/android/gms/internal/zzbrq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrq;->asString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/zzbqx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqw;->zzZV()Lcom/google/android/gms/internal/zzbqy$zza;

    move-result-object v3

    invoke-direct {v2, v3, p0, v1, v0}, Lcom/google/android/gms/internal/zzbqx;-><init>(Lcom/google/android/gms/internal/zzbqy$zza;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/b;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqx;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbox;->zzYL()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzbox$1;->zzcdI:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqx;->zzZV()Lcom/google/android/gms/internal/zzbqy$zza;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbqy$zza;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbox;->zzcdG:Lcom/google/firebase/database/a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqx;->zzZY()Lcom/google/firebase/database/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqx;->zzZZ()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/a;->a(Lcom/google/firebase/database/b;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbox;->zzcdG:Lcom/google/firebase/database/a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqx;->zzZY()Lcom/google/firebase/database/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqx;->zzZZ()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/a;->b(Lcom/google/firebase/database/b;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbox;->zzcdG:Lcom/google/firebase/database/a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqx;->zzZY()Lcom/google/firebase/database/b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqx;->zzZZ()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/firebase/database/a;->c(Lcom/google/firebase/database/b;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbox;->zzcdG:Lcom/google/firebase/database/a;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbqx;->zzZY()Lcom/google/firebase/database/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/database/a;->a(Lcom/google/firebase/database/b;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public zza(Lcom/google/firebase/database/c;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbox;->zzcdG:Lcom/google/firebase/database/a;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/a;->a(Lcom/google/firebase/database/c;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbqy$zza;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbqy$zza;->zzchX:Lcom/google/android/gms/internal/zzbqy$zza;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbpc;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/zzbox;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzbox;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbox;->zzcdG:Lcom/google/firebase/database/a;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbox;->zzcdG:Lcom/google/firebase/database/a;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
