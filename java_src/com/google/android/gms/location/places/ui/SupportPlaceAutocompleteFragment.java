package com.google.android.gms.location.places.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.google.android.gms.R;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.ui.PlaceAutocomplete;
import com.google.android.gms.maps.model.LatLngBounds;
/* loaded from: classes2.dex */
public class SupportPlaceAutocompleteFragment extends Fragment {
    private View zzbnl;
    private View zzbnm;
    private EditText zzbnn;
    private boolean zzbno;
    private LatLngBounds zzbnp;
    private AutocompleteFilter zzbnq;
    private PlaceSelectionListener zzbnr;

    private void zzJj() {
        int i = 0;
        boolean z = !this.zzbnn.getText().toString().isEmpty();
        View view = this.zzbnm;
        if (!z) {
            i = 8;
        }
        view.setVisibility(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzJk() {
        int i;
        try {
            Intent build = new PlaceAutocomplete.IntentBuilder(2).setBoundsBias(this.zzbnp).setFilter(this.zzbnq).zzeZ(this.zzbnn.getText().toString()).zzlc(1).build(getActivity());
            this.zzbno = true;
            startActivityForResult(build, 30421);
            i = -1;
        } catch (GooglePlayServicesNotAvailableException e) {
            int i2 = e.errorCode;
            Log.e("Places", "Could not open autocomplete activity", e);
            i = i2;
        } catch (GooglePlayServicesRepairableException e2) {
            int connectionStatusCode = e2.getConnectionStatusCode();
            Log.e("Places", "Could not open autocomplete activity", e2);
            i = connectionStatusCode;
        }
        if (i != -1) {
            GoogleApiAvailability.getInstance().showErrorDialogFragment(getActivity(), i, 30422);
        }
    }

    @Override // android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        this.zzbno = false;
        if (i == 30421) {
            if (i2 == -1) {
                Place place = PlaceAutocomplete.getPlace(getActivity(), intent);
                if (this.zzbnr != null) {
                    this.zzbnr.onPlaceSelected(place);
                }
                setText(place.mo545getName().toString());
            } else if (i2 == 2) {
                Status status = PlaceAutocomplete.getStatus(getActivity(), intent);
                if (this.zzbnr != null) {
                    this.zzbnr.onError(status);
                }
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.place_autocomplete_fragment, viewGroup, false);
        this.zzbnl = inflate.findViewById(R.id.place_autocomplete_search_button);
        this.zzbnm = inflate.findViewById(R.id.place_autocomplete_clear_button);
        this.zzbnn = (EditText) inflate.findViewById(R.id.place_autocomplete_search_input);
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.google.android.gms.location.places.ui.SupportPlaceAutocompleteFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!SupportPlaceAutocompleteFragment.this.zzbno) {
                    SupportPlaceAutocompleteFragment.this.zzJk();
                }
            }
        };
        this.zzbnl.setOnClickListener(onClickListener);
        this.zzbnn.setOnClickListener(onClickListener);
        this.zzbnm.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.location.places.ui.SupportPlaceAutocompleteFragment.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SupportPlaceAutocompleteFragment.this.setText("");
            }
        });
        zzJj();
        return inflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onDestroyView() {
        this.zzbnl = null;
        this.zzbnm = null;
        this.zzbnn = null;
        super.onDestroyView();
    }

    public void setBoundsBias(LatLngBounds latLngBounds) {
        this.zzbnp = latLngBounds;
    }

    public void setFilter(AutocompleteFilter autocompleteFilter) {
        this.zzbnq = autocompleteFilter;
    }

    public void setHint(CharSequence charSequence) {
        this.zzbnn.setHint(charSequence);
        this.zzbnl.setContentDescription(charSequence);
    }

    public void setOnPlaceSelectedListener(PlaceSelectionListener placeSelectionListener) {
        this.zzbnr = placeSelectionListener;
    }

    public void setText(CharSequence charSequence) {
        this.zzbnn.setText(charSequence);
        zzJj();
    }
}
